.class public Lcom/android/mms/ext/ui/MessageUtilsExt;
.super Ljava/lang/Object;
.source "MessageUtilsExt.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getShortcodes(Lcom/android/mms/data/ContactList;)Lcom/android/mms/data/ContactList;
    .locals 4

    .prologue
    .line 145
    new-instance v1, Lcom/android/mms/data/ContactList;

    invoke-direct {v1}, Lcom/android/mms/data/ContactList;-><init>()V

    .line 146
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 147
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->isEmail()Z

    move-result v3

    if-nez v3, :cond_0

    .line 150
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/ext/ui/MessageUtilsExt;->isShortcode(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 151
    invoke-virtual {v1, v0}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 155
    :cond_1
    return-object v1
.end method

.method public static isShortcode(Ljava/lang/String;)Z
    .locals 11

    .prologue
    const/16 v10, 0x31

    const/16 v9, 0x30

    const/16 v8, 0xa

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isShortcode : number = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    .line 63
    const-string/jumbo v3, ""

    .line 64
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 65
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    .line 70
    :try_start_0
    const-string/jumbo v4, ""

    invoke-virtual {v0, v5, v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v6

    .line 71
    invoke-virtual {v6}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 72
    :try_start_1
    invoke-virtual {v6}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    .line 76
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getLocalNumber()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ""

    .line 75
    invoke-virtual {v0, v6, v7}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I
    :try_end_1
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 79
    if-eq v4, v0, :cond_7

    move v0, v1

    .line 97
    :goto_0
    const-string/jumbo v6, "+"

    const-string/jumbo v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 98
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    .line 104
    if-nez v0, :cond_4

    .line 105
    if-ge v6, v8, :cond_0

    .line 106
    const-string/jumbo v0, "Mms"

    .line 107
    const-string/jumbo v2, "Shortcode : A non-international number of less than ten digits"

    .line 106
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return v1

    .line 91
    :catch_0
    move-exception v0

    move v4, v2

    .line 92
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isShortcode() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 93
    const-string/jumbo v7, "NumberParseException was thrown: "

    .line 92
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 93
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/NumberParseException;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    move v0, v2

    goto :goto_0

    .line 109
    :cond_0
    const-string/jumbo v0, "1"

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "0"

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    :cond_1
    if-ne v6, v8, :cond_2

    .line 111
    const-string/jumbo v0, "Mms"

    .line 112
    const-string/jumbo v2, "Shortcode : A non-international ten digit number where the first digit is 0 or 1"

    .line 111
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return v1

    .line 115
    :cond_2
    const-string/jumbo v0, "1"

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 116
    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v10, :cond_3

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v9, :cond_6

    .line 117
    :cond_3
    const/16 v0, 0xb

    if-ne v6, v0, :cond_6

    .line 118
    const-string/jumbo v0, "Mms"

    .line 119
    const-string/jumbo v2, "Shortcode : A non-international eleven digit number where the first digit is 1 and the second digit is 0 or 1"

    .line 118
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return v1

    .line 124
    :cond_4
    if-ne v4, v1, :cond_6

    .line 125
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v8, :cond_6

    .line 126
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v10, :cond_5

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v9, :cond_6

    .line 128
    :cond_5
    const-string/jumbo v0, "Mms"

    .line 129
    const-string/jumbo v2, "Shortcode : An international number using country code \u201c1\u201d where the remaining 10 digit number begins with 0 or 1"

    .line 128
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return v1

    .line 135
    :cond_6
    return v2

    .line 91
    :catch_1
    move-exception v0

    goto/16 :goto_1

    :cond_7
    move v0, v2

    goto/16 :goto_0
.end method

.method public static showShortcodeErrorDialog(Landroid/content/Context;Lcom/android/mms/data/ContactList;)V
    .locals 3

    .prologue
    .line 162
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 164
    const v1, 0x7f070373

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 165
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070374

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 166
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 168
    new-instance v1, Lcom/android/mms/ext/ui/MessageUtilsExt$1;

    invoke-direct {v1}, Lcom/android/mms/ext/ui/MessageUtilsExt$1;-><init>()V

    .line 167
    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 174
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 175
    return-void
.end method
