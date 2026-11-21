.class public Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordContents;
.super Ljava/lang/Object;
.source "UserDictionaryAddWordContents.java"


# static fields
.field static final CODE_ALREADY_PRESENT:I = 0x2

.field static final CODE_CANCEL:I = 0x1

.field static final CODE_WORD_ADDED:I = 0x0

.field public static final EXTRA_MODE:Ljava/lang/String; = "mode"

.field public static final EXTRA_ORIGINAL_SHORTCUT:Ljava/lang/String; = "originalShortcut"

.field public static final EXTRA_ORIGINAL_WORD:Ljava/lang/String; = "originalWord"

.field public static final EXTRA_SHORTCUT:Ljava/lang/String; = "shortcut"

.field public static final EXTRA_WORD:Ljava/lang/String; = "word"

.field private static final FREQUENCY_FOR_USER_DICTIONARY_ADDS:I = 0xfa

.field private static final HAS_WORD_PROJECTION:[Ljava/lang/String;

.field private static final HAS_WORD_SELECTION_ALL_LOCALES:Ljava/lang/String; = "word=? AND locale is null"

.field public static final MODE_EDIT:I = 0x0

.field public static final MODE_INSERT:I = 0x1


# instance fields
.field private final mMode:I

.field private final mOldShortcut:Ljava/lang/String;

.field private final mOldWord:Ljava/lang/String;

.field private mSavedShortcut:Ljava/lang/String;

.field private mSavedWord:Ljava/lang/String;

.field private final mShortcutEditText:Landroid/widget/EditText;

.field private final mWordEditText:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 179
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "word"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordContents;->HAS_WORD_PROJECTION:[Ljava/lang/String;

    .line 41
    return-void
.end method

.method constructor <init>(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const v0, 0x7f0d004f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordContents;->mWordEditText:Landroid/widget/EditText;

    .line 67
    const v0, 0x7f0d0051

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordContents;->mShortcutEditText:Landroid/widget/EditText;

    .line 68
    sget-boolean v0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings;->IS_SHORTCUT_API_SUPPORTED:Z

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordContents;->mShortcutEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 70
    const v0, 0x7f0d0050

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 72
    :cond_0
    const-string/jumbo v0, "word"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_1

    .line 74
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordContents;->mWordEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordContents;->mWordEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordContents;->mWordEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 80
    :cond_1
    sget-boolean v0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings;->IS_SHORTCUT_API_SUPPORTED:Z

    if-eqz v0, :cond_3

    .line 81
    const-string/jumbo v0, "shortcut"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordContents;->mShortcutEditText:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    .line 83
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordContents;->mShortcutEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 85
    :cond_2
    const-string/jumbo v0, "shortcut"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordContents;->mOldShortcut:Ljava/lang/String;

    .line 90
    :goto_0
    const-string/jumbo v0, "mode"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordContents;->mMode:I

    .line 91
    const-string/jumbo v0, "word"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordContents;->mOldWord:Ljava/lang/String;

    .line 92
    return-void

    .line 88
    :cond_3
    iput-object v2, p0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordContents;->mOldShortcut:Ljava/lang/String;

    goto :goto_0
.end method

.method constructor <init>(Landroid/view/View;Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordContents;)V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const v0, 0x7f0d004f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordContents;->mWordEditText:Landroid/widget/EditText;

    .line 97
    const v0, 0x7f0d0051

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordContents;->mShortcutEditText:Landroid/widget/EditText;

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordContents;->mMode:I

    .line 99
    iget-object v0, p2, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordContents;->mSavedWord:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordContents;->mOldWord:Ljava/lang/String;

    .line 100
    iget-object v0, p2, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordContents;->mSavedShortcut:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordContents;->mOldShortcut:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public static addWord(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/provider/UserDictionary$Words;->addWord(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/util/Locale;)V

    .line 177
    return-void
.end method

.method private hasWord(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 187
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    .line 188
    sget-object v2, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordContents;->HAS_WORD_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "word=? AND locale is null"

    .line 189
    new-array v4, v6, [Ljava/lang/String;

    aput-object p1, v4, v7

    .line 187
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 191
    if-nez v1, :cond_1

    .line 194
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 191
    :cond_0
    return v7

    .line 192
    :cond_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_3

    move v0, v6

    .line 194
    :goto_0
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 192
    :cond_2
    return v0

    :cond_3
    move v0, v7

    goto :goto_0

    .line 193
    :catchall_0
    move-exception v0

    .line 194
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 193
    :cond_4
    throw v0
.end method


# virtual methods
.method apply(Landroid/content/Context;Landroid/os/Bundle;)I
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 125
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordContents;->saveStateIntoBundle(Landroid/os/Bundle;)V

    .line 126
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 127
    iget v0, p0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordContents;->mMode:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordContents;->mOldWord:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordContents;->mOldWord:Ljava/lang/String;

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordContents;->mOldShortcut:Ljava/lang/String;

    invoke-static {v0, v3, v2}, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings;->deleteWord(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordContents;->mWordEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 133
    sget-boolean v0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings;->IS_SHORTCUT_API_SUPPORTED:Z

    if-nez v0, :cond_3

    move-object v0, v1

    .line 145
    :cond_2
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 147
    const/4 v0, 0x1

    return v0

    .line 135
    :cond_3
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordContents;->mShortcutEditText:Landroid/widget/EditText;

    if-nez v0, :cond_4

    move-object v0, v1

    .line 136
    goto :goto_0

    .line 138
    :cond_4
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordContents;->mShortcutEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v0, v1

    .line 140
    goto :goto_0

    .line 149
    :cond_5
    iput-object v3, p0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordContents;->mSavedWord:Ljava/lang/String;

    .line 150
    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordContents;->mSavedShortcut:Ljava/lang/String;

    .line 155
    invoke-direct {p0, v3, p1}, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordContents;->hasWord(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v0, 0x2

    return v0

    .line 160
    :cond_6
    invoke-static {v3, v1, v2}, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings;->deleteWord(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V

    .line 161
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 163
    invoke-static {v3, v0, v2}, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings;->deleteWord(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V

    .line 168
    :cond_7
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 169
    const/16 v2, 0xfa

    .line 168
    invoke-static {p1, v1, v2, v0}, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordContents;->addWord(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 171
    return v5
.end method

.method delete(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 115
    iget v0, p0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordContents;->mMode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordContents;->mOldWord:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordContents;->mOldWord:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordContents;->mOldShortcut:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings;->deleteWord(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V

    .line 121
    :cond_0
    return-void
.end method

.method saveStateIntoBundle(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 104
    const-string/jumbo v0, "word"

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordContents;->mWordEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string/jumbo v0, "originalWord"

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordContents;->mOldWord:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordContents;->mShortcutEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 107
    const-string/jumbo v0, "shortcut"

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordContents;->mShortcutEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordContents;->mOldShortcut:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 110
    const-string/jumbo v0, "originalShortcut"

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordContents;->mOldShortcut:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_1
    return-void
.end method
