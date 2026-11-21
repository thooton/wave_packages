.class public Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;
.super Ljava/lang/Object;
.source "WriteAlphaSettings.java"


# static fields
.field public static BASE_AND_HELP_LINE:I = 0x0

.field public static BASE_LINE_ONLY:I = 0x0

.field public static HELP_AND_TOP_LINE:I = 0x0

.field public static HELP_LINE_ONLY:I = 0x0

.field public static final HWR_TEMPLATE_DATABASE:I = 0x109

.field public static MAX_RESULT_CANDIDATES:I = 0x0

.field public static MAX_RESULT_CHARACTERS:I = 0x0

.field public static final MCR_MODE:I = 0x1

.field public static NO_LINE_SUPPORTS:I

.field public static final SCR_MODE:I

.field public static TOP_LINE_ONLY:I


# instance fields
.field private mBaseline:I

.field public mCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mHeight:I

.field private mHelpline:I

.field public mHwrTemplateDatabaseID:I

.field public mLanguageDatabaseID:I

.field public mRecognitionMode:I

.field public mRecognizeDelay:I

.field public mSupportLineSet:I

.field private mTopline:I

.field private mWidth:I

.field public mWritingDirection:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/16 v0, 0xa

    sput v0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->MAX_RESULT_CANDIDATES:I

    .line 15
    const/16 v0, 0x40

    sput v0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->MAX_RESULT_CHARACTERS:I

    .line 17
    const/4 v0, 0x0

    sput v0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->NO_LINE_SUPPORTS:I

    .line 18
    const/4 v0, 0x1

    sput v0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->TOP_LINE_ONLY:I

    .line 19
    const/4 v0, 0x2

    sput v0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->BASE_LINE_ONLY:I

    .line 20
    const/4 v0, 0x3

    sput v0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->HELP_LINE_ONLY:I

    .line 21
    const/4 v0, 0x4

    sput v0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->BASE_AND_HELP_LINE:I

    .line 22
    const/4 v0, 0x5

    sput v0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->HELP_AND_TOP_LINE:I

    .line 8
    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    .line 45
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->BACK_GESTURE:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->RETURN_GESTURE:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->WHITESPACE_GESTURE:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->LATIN:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->CYRILLIC:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->MULTITOUCH_GESTURES:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->setRecognitionMode(I)V

    .line 54
    iput v2, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mSupportLineSet:I

    .line 57
    iput v2, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mHelpline:I

    .line 58
    iput v2, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mBaseline:I

    .line 59
    iput v2, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mTopline:I

    .line 61
    const/4 v0, 0x2

    iput v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mWritingDirection:I

    .line 62
    const/16 v0, 0x2ee

    iput v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mRecognizeDelay:I

    .line 66
    invoke-virtual {p0, v2}, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->setWidth(I)V

    .line 67
    invoke-virtual {p0, v2}, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->setHeight(I)V

    .line 68
    return-void
.end method


# virtual methods
.method public addEmailCategoryOnly(Lcom/nuance/flext9_OEM/input/InputMethods$Language;)V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 145
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->MULTITOUCH_GESTURES:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    iget v0, p1, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    const/16 v1, 0x101

    if-ne v0, v1, :cond_0

    .line 147
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->ARABIC:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->EMAIL:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    return-void

    .line 151
    :cond_0
    iget v0, p1, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    const/16 v1, 0x10d

    if-ne v0, v1, :cond_1

    .line 152
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->HEBREW:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->HEBREW_GERESH:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->HEBREW_GERESHAYIM:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->HEBREW_MAQAF:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->HEBREW_SHEQEL:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->EMAIL:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    return-void

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->LATIN:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->CYRILLIC:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->EMAIL:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    return-void
.end method

.method public addPhoneNumberCategoryOnly()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 139
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->PHONE_NUMBER:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->MULTITOUCH_GESTURES:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    return-void
.end method

.method public addTextCategory(Lcom/nuance/flext9_OEM/input/InputMethods$Language;)V
    .locals 3

    .prologue
    .line 252
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 253
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->MULTITOUCH_GESTURES:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v0

    .line 255
    iget v1, p1, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    const/16 v2, 0x101

    if-ne v1, v2, :cond_3

    .line 256
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v2, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->ARABIC:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v2, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->ARABIC_FS_ARABIC_GESTURES:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->isMixLetterAndDigitEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v2, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->ARABIC_DIGIT:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v2, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->ARABIC_FS_ARABIC_DIGITSYMBOLS:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v2, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->ARABIC_FS_ALPHABETIC_DIGITSYMBOLS:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    :cond_0
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->isMixLetterAndPunctuationEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 265
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v2, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->ARABIC_PUNCTUATIONS:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    :cond_1
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->isMixLetterAndSymbolEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 268
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->ARABIC_PUNCTUATIONS:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->ARABIC_FS_ARABIC_LETTERSYMBOLS:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->ARABIC_FS_ALPHABETIC_LETTERSYMBOLS:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    :cond_2
    return-void

    .line 274
    :cond_3
    iget v1, p1, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    const/16 v2, 0x10d

    if-ne v1, v2, :cond_7

    .line 275
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v2, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->HEBREW:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v2, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->HEBREW_GERESH:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v2, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->HEBREW_GERESHAYIM:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v2, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->HEBREW_MAQAF:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v2, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->HEBREW_SHEQEL:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v2, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->HEBREW_GERESH_GESTURE:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->isMixLetterAndDigitEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 283
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v2, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->HEBREW_FS_ALPHABETIC_DIGITSYMBOLS:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v2, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->HEBREW_FS_ALPHABETIC_TOPAREA:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v2, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->HEBREW_FS_HEBREW_TOPAREA:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    :cond_4
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->isMixLetterAndPunctuationEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 288
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v2, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->HEBREW_FS_HEBREW_BOTTOMAREA:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v2, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->HEBREW_FS_ALPHABETIC_BOTTOMAREA:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    :cond_5
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->isMixLetterAndSymbolEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 292
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->HEBREW_FS_HEBREW_LETTERSYMBOLS:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->HEBREW_FS_ALPHABETIC_MIDAREA:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->HEBREW_FS_HEBREW_MIDAREA:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    :cond_6
    return-void

    .line 299
    :cond_7
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v2, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->LATIN:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v2, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->EXCL_MARK_PUNCTUATIONS:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v2, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->PERIOD_COMMA_PUNCTUATIONS:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v2, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->CONTRACTION_MARK:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v2, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->AT_SIGN:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v2, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->RETURN_GESTURE:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v2, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->BACK_GESTURE:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v2, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->WHITESPACE_GESTURE:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    iget v1, p1, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    const/16 v2, 0x10a

    if-ne v1, v2, :cond_8

    .line 312
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v2, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->SPANISH_PUNCTUATIONS:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    :cond_8
    iget v1, p1, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    const/16 v2, 0x119

    if-eq v1, v2, :cond_9

    iget v1, p1, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    const/16 v2, 0x122

    if-ne v1, v2, :cond_e

    .line 316
    :cond_9
    :goto_0
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v2, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->CYRILLIC:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    :cond_a
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->isMixLetterAndDigitEnabled()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 321
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v2, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->DIGIT:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    :cond_b
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->isMixLetterAndPunctuationEnabled()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 324
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v2, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->BASIC_PUNCTUATIONS:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    :cond_c
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->isMixLetterAndSymbolEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 327
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->PUNCTUATIONS:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    :cond_d
    return-void

    .line 315
    :cond_e
    iget v1, p1, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    const/16 v2, 0x161

    if-ne v1, v2, :cond_a

    goto :goto_0
.end method

.method public addTextCategoryForSCRMode(Lcom/nuance/flext9_OEM/input/InputMethods$Language;)V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 195
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->DIGIT:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    iget v0, p1, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    const/16 v1, 0x101

    if-ne v0, v1, :cond_0

    .line 197
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->ARABIC:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->ARABIC_DIGIT:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->ARABIC_FS_ARABIC_DIGITSYMBOLS:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->ARABIC_FS_ARABIC_LETTERSYMBOLS:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->ARABIC_FS_ALPHABETIC_DIGITSYMBOLS:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->ARABIC_PUNCTUATIONS:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->ARABIC_FS_ARABIC_GESTURES:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->ARABIC_FS_ALPHABETIC_LETTERSYMBOLS:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    return-void

    .line 208
    :cond_0
    iget v0, p1, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    const/16 v1, 0x10d

    if-ne v0, v1, :cond_1

    .line 209
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->HEBREW:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->HEBREW_GERESH:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->HEBREW_GERESHAYIM:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->HEBREW_MAQAF:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->HEBREW_SHEQEL:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->HEBREW_GERESH_GESTURE:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->HEBREW_FS_ALPHABETIC_DIGITSYMBOLS:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->HEBREW_FS_ALPHABETIC_TOPAREA:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->HEBREW_FS_HEBREW_TOPAREA:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->HEBREW_FS_HEBREW_LETTERSYMBOLS:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->HEBREW_FS_ALPHABETIC_MIDAREA:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->HEBREW_FS_HEBREW_MIDAREA:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    return-void

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->LATIN:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    iget v0, p1, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    const/16 v1, 0x119

    if-eq v0, v1, :cond_2

    iget v0, p1, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    const/16 v1, 0x122

    if-ne v0, v1, :cond_4

    .line 229
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->CYRILLIC:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_3
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->EXCL_MARK_PUNCTUATIONS:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->PERIOD_COMMA_PUNCTUATIONS:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->CONTRACTION_MARK:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->AT_SIGN:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->BASIC_PUNCTUATIONS:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->PUNCTUATIONS:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->EXTRA:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    return-void

    .line 228
    :cond_4
    iget v0, p1, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    const/16 v1, 0x161

    if-ne v0, v1, :cond_3

    goto :goto_0
.end method

.method public addUrlCategoryOnly(Lcom/nuance/flext9_OEM/input/InputMethods$Language;)V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 170
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->MULTITOUCH_GESTURES:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    iget v0, p1, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    const/16 v1, 0x101

    if-ne v0, v1, :cond_0

    .line 172
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->ARABIC:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->URL:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    return-void

    .line 176
    :cond_0
    iget v0, p1, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    const/16 v1, 0x10d

    if-ne v0, v1, :cond_1

    .line 177
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->HEBREW:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->HEBREW_GERESH:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->HEBREW_GERESHAYIM:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->HEBREW_MAQAF:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->HEBREW_SHEQEL:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->URL:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    return-void

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->URL:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->CYRILLIC:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    return-void
.end method

.method public getCurrentCategories()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 336
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final getHeight()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mHeight:I

    return v0
.end method

.method public final getRecognitionMode()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mRecognitionMode:I

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mWidth:I

    return v0
.end method

.method public setCategories(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 332
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 333
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 334
    return-void
.end method

.method public setDigitsAndSymbolsCategoryOnly(Lcom/nuance/flext9_OEM/input/InputMethods$Language;)V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 96
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->MULTITOUCH_GESTURES:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->DIGIT:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    iget v0, p1, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    const/16 v1, 0x101

    if-ne v0, v1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->ARABIC_DIGIT:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->ARABIC_PUNCTUATIONS:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->ARABIC_FS_ARABIC_GESTURES:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->ARABIC_FS_ARABIC_DIGITSYMBOLS:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->ARABIC_FS_ARABIC_LETTERSYMBOLS:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->ARABIC_FS_ALPHABETIC_DIGITSYMBOLS:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->ARABIC_FS_ALPHABETIC_LETTERSYMBOLS:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    return-void

    .line 109
    :cond_0
    iget v0, p1, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    const/16 v1, 0x10d

    if-ne v0, v1, :cond_1

    .line 110
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->HEBREW_GERESH_GESTURE:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->HEBREW_FS_HEBREW_LETTERSYMBOLS:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->HEBREW_FS_ALPHABETIC_DIGITSYMBOLS:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->HEBREW_FS_ALPHABETIC_MIDAREA:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->HEBREW_FS_ALPHABETIC_TOPAREA:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->HEBREW_FS_HEBREW_TOPAREA:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    return-void

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->RETURN_GESTURE:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->BACK_GESTURE:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->PHONE_NUMBER_SUPPLEMENTS:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->PUNCTUATIONS:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->ALT:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->HORIZONTAL_SYMBOLS:Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    return-void
.end method

.method public final setHeight(I)V
    .locals 0

    .prologue
    .line 75
    iput p1, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mHeight:I

    .line 76
    return-void
.end method

.method public final setRecognitionMode(I)V
    .locals 0

    .prologue
    .line 91
    iput p1, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mRecognitionMode:I

    .line 92
    return-void
.end method

.method public final setWidth(I)V
    .locals 0

    .prologue
    .line 71
    iput p1, p0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mWidth:I

    .line 72
    return-void
.end method
