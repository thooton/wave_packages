.class public Lcom/nuance/flext9_OEM/input/InputFieldInfo;
.super Ljava/lang/Object;
.source "InputFieldInfo.java"


# static fields
.field public static final INPUT_TYPE_DATE_TIME:Ljava/lang/String; = "date time"

.field public static final INPUT_TYPE_EMAIL_ADDRESS:Ljava/lang/String; = "email address"

.field public static final INPUT_TYPE_EMAIL_SUBJECT:Ljava/lang/String; = "email subject"

.field public static final INPUT_TYPE_LONG_MESSAGE:Ljava/lang/String; = "long message"

.field public static final INPUT_TYPE_NUMBERS:Ljava/lang/String; = "numbers"

.field public static final INPUT_TYPE_PASSWORD:Ljava/lang/String; = "password"

.field public static final INPUT_TYPE_PERSON_NAME:Ljava/lang/String; = "person name"

.field public static final INPUT_TYPE_PHONE_NUMBER:Ljava/lang/String; = "phone number"

.field public static final INPUT_TYPE_POSTAL_ADDRESS:Ljava/lang/String; = "postal address"

.field public static final INPUT_TYPE_SHORT_MESSAGE:Ljava/lang/String; = "short message"

.field public static final INPUT_TYPE_TEXT:Ljava/lang/String; = "text"

.field public static final INPUT_TYPE_WEB_ADDRESS:Ljava/lang/String; = "web address"

.field public static final INPUT_TYPE_WEB_SEARCH:Ljava/lang/String; = "web search"

.field public static final INPUT_TYPE_WEB_TEXT:Ljava/lang/String; = "web text"

.field private static LOG_TAG:Ljava/lang/String;


# instance fields
.field mAttribute:Landroid/view/inputmethod/EditorInfo;

.field mIME:Lcom/nuance/flext9_OEM/input/IME;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string/jumbo v0, "XT9IME"

    sput-object v0, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->LOG_TAG:Ljava/lang/String;

    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dump()V
    .locals 3

    .prologue
    .line 288
    sget-object v0, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "field_input_type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->getInpuType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    sget-object v0, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "package name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    sget-object v0, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "completions = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isCompletionField()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    sget-object v0, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isFullScreenMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->mIME:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v2}, Lcom/nuance/flext9_OEM/input/IME;->isFullscreenMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    sget-object v0, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, " "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    return-void
.end method

.method public getActionId()I
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->mAttribute:Landroid/view/inputmethod/EditorInfo;

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->actionId:I

    return v0
.end method

.method public getActionLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->mAttribute:Landroid/view/inputmethod/EditorInfo;

    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->mAttribute:Landroid/view/inputmethod/EditorInfo;

    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 203
    :cond_0
    const-string/jumbo v0, "null"

    return-object v0
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->mAttribute:Landroid/view/inputmethod/EditorInfo;

    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->fieldName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->mAttribute:Landroid/view/inputmethod/EditorInfo;

    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->fieldName:Ljava/lang/String;

    return-object v0

    .line 195
    :cond_0
    const-string/jumbo v0, "null"

    return-object v0
.end method

.method public getImeActionType()I
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->mAttribute:Landroid/view/inputmethod/EditorInfo;

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const v1, 0x400000ff    # 2.0000608f

    and-int/2addr v0, v1

    return v0
.end method

.method public getImeOptions()I
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->mAttribute:Landroid/view/inputmethod/EditorInfo;

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    return v0
.end method

.method public getInpuType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 211
    const-string/jumbo v0, "text"

    .line 213
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isPasswordField()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 214
    const-string/jumbo v0, "password"

    .line 255
    :cond_0
    :goto_0
    return-object v0

    .line 216
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isEmailAddressField()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 217
    const-string/jumbo v0, "email address"

    goto :goto_0

    .line 219
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isEmailSubjectField()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 220
    const-string/jumbo v0, "email subject"

    goto :goto_0

    .line 222
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isURLField()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 223
    const-string/jumbo v0, "web address"

    goto :goto_0

    .line 225
    :cond_4
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isNameField()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 226
    const-string/jumbo v0, "person name"

    goto :goto_0

    .line 228
    :cond_5
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isShortMessageField()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 229
    const-string/jumbo v0, "short message"

    goto :goto_0

    .line 231
    :cond_6
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isLongMessageField()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 232
    const-string/jumbo v0, "long message"

    goto :goto_0

    .line 234
    :cond_7
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isWebEditText()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 235
    const-string/jumbo v0, "web text"

    goto :goto_0

    .line 237
    :cond_8
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isPostalAddress()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 238
    const-string/jumbo v0, "postal address"

    goto :goto_0

    .line 240
    :cond_9
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isDateTimeField()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 241
    const-string/jumbo v0, "date time"

    goto :goto_0

    .line 243
    :cond_a
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isNumberField()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 244
    const-string/jumbo v0, "numbers"

    goto :goto_0

    .line 246
    :cond_b
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isPhoneNumberField()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 247
    const-string/jumbo v0, "phone number"

    goto :goto_0

    .line 249
    :cond_c
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isWebSearchField()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    const-string/jumbo v0, "web search"

    goto :goto_0
.end method

.method public getInputClass()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->mAttribute:Landroid/view/inputmethod/EditorInfo;

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public getInputVariant()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->mAttribute:Landroid/view/inputmethod/EditorInfo;

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v0, v0, 0xff0

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->mAttribute:Landroid/view/inputmethod/EditorInfo;

    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->mAttribute:Landroid/view/inputmethod/EditorInfo;

    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    return-object v0

    .line 274
    :cond_0
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getPrivateImeOptions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->mAttribute:Landroid/view/inputmethod/EditorInfo;

    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->mAttribute:Landroid/view/inputmethod/EditorInfo;

    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    return-object v0

    .line 282
    :cond_0
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public isCompletionField()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 125
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->mAttribute:Landroid/view/inputmethod/EditorInfo;

    iget v1, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isDateTimeField()Z
    .locals 2

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->getInputClass()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmailAddressField()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 107
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isInputTextClass()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 108
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->getInputVariant()I

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->getInputVariant()I

    move-result v2

    const/16 v3, 0xd0

    if-ne v2, v3, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 109
    goto :goto_0

    :cond_2
    move v0, v1

    .line 107
    goto :goto_0
.end method

.method public isEmailSubjectField()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 153
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isInputTextClass()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->getInputVariant()I

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isFieldWithFilterList()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 133
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isInputTextClass()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->getInputVariant()I

    move-result v1

    const/16 v2, 0xb0

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isInputTextClass()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 78
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->getInputClass()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLongMessageField()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 149
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isInputTextClass()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->getInputVariant()I

    move-result v1

    const/16 v2, 0x50

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isMultilineField()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 129
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->mAttribute:Landroid/view/inputmethod/EditorInfo;

    iget v1, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isNameField()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 137
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isInputTextClass()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->getInputVariant()I

    move-result v1

    const/16 v2, 0x60

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isNoSuggestionOnField()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 121
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->mAttribute:Landroid/view/inputmethod/EditorInfo;

    iget v1, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v2, 0x80000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isNumberField()Z
    .locals 2

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->getInputClass()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPasswordField()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 90
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isInputTextClass()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 91
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->getInputVariant()I

    move-result v2

    const/16 v3, 0x80

    if-eq v2, v3, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->getInputVariant()I

    move-result v2

    const/16 v3, 0x90

    if-ne v2, v3, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v0

    .line 93
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->getInputVariant()I

    move-result v2

    const/16 v3, 0xe0

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 90
    goto :goto_0
.end method

.method public isPhoneNumberField()Z
    .locals 2

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->getInputClass()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPhoneticField()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 141
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isInputTextClass()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->getInputVariant()I

    move-result v1

    const/16 v2, 0xc0

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isPostalAddress()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 157
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isInputTextClass()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->getInputVariant()I

    move-result v1

    const/16 v2, 0x70

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isShortMessageField()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 145
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isInputTextClass()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->getInputVariant()I

    move-result v1

    const/16 v2, 0x40

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isUDBChineseSimplifyField()Z
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->mAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->mAttribute:Landroid/view/inputmethod/EditorInfo;

    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->mAttribute:Landroid/view/inputmethod/EditorInfo;

    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    const-string/jumbo v1, "xt9.com.nuance.udbeditor.chinese.simplify.udb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 48
    if-eqz v0, :cond_0

    .line 50
    const/4 v0, 0x1

    return v0

    .line 53
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isUDBChineseTraditionalField()Z
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->mAttribute:Landroid/view/inputmethod/EditorInfo;

    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->mAttribute:Landroid/view/inputmethod/EditorInfo;

    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    const-string/jumbo v1, "xt9.com.nuance.udbeditor.chinese.traditional.udb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 57
    if-eqz v0, :cond_0

    .line 59
    const/4 v0, 0x1

    return v0

    .line 62
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isUDBSubstitutionField()Z
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->mAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->mAttribute:Landroid/view/inputmethod/EditorInfo;

    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->mAttribute:Landroid/view/inputmethod/EditorInfo;

    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    const-string/jumbo v1, "xt9.com.nuance.udbeditor.alpha.substitution"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 39
    if-eqz v0, :cond_0

    .line 41
    const/4 v0, 0x1

    return v0

    .line 44
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isURIField()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 117
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isInputTextClass()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->getInputVariant()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isURLField()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 113
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isInputTextClass()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->getInputVariant()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isWebEditText()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 161
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isInputTextClass()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->getInputVariant()I

    move-result v1

    const/16 v2, 0xa0

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isWebEmailField()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 102
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isInputTextClass()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->getInputVariant()I

    move-result v1

    const/16 v2, 0xd0

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 102
    :cond_0
    return v0
.end method

.method public isWebPasswordField()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 97
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isInputTextClass()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->getInputVariant()I

    move-result v1

    const/16 v2, 0xe0

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 97
    :cond_0
    return v0
.end method

.method public isWebSearchField()Z
    .locals 2

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isInputTextClass()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.android.browser"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.google.android.googlequicksearchbox"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 260
    if-eqz v0, :cond_1

    .line 263
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 266
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public setAttribute(Landroid/view/inputmethod/EditorInfo;Lcom/nuance/flext9_OEM/input/IME;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->mAttribute:Landroid/view/inputmethod/EditorInfo;

    .line 30
    iput-object p2, p0, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->mIME:Lcom/nuance/flext9_OEM/input/IME;

    .line 36
    return-void
.end method

.method public suggestionCompletionEnabled()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 177
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->mAttribute:Landroid/view/inputmethod/EditorInfo;

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->mIME:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->isFullscreenMode()Z

    move-result v0

    return v0

    .line 183
    :cond_0
    return v2
.end method

.method public textInputFieldWithSuggestionDisabled()Z
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isPasswordField()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isDateTimeField()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isNumberField()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isPhoneNumberField()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isCompletionField()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public textInputFieldWithSuggestionEnabled()Z
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->textInputFieldWithSuggestionDisabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
