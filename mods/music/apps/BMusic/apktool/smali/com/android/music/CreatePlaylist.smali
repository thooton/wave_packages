.class public Lcom/android/music/CreatePlaylist;
.super Landroid/app/Activity;
.source "CreatePlaylist.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/CreatePlaylist$1;,
        Lcom/android/music/CreatePlaylist$2;,
        Lcom/android/music/CreatePlaylist$3;,
        Lcom/android/music/CreatePlaylist$4;,
        Lcom/android/music/CreatePlaylist$5;
    }
.end annotation


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mCancelOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mOpenClicked:Landroid/view/View$OnClickListener;

.field private mPlaylist:Landroid/widget/EditText;

.field private mPlaylistOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mPrompt:Landroid/widget/TextView;

.field private mSaveButton:Landroid/widget/Button;

.field private mSaveOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field mTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method static synthetic -get0(Lcom/android/music/CreatePlaylist;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/music/CreatePlaylist;->mPlaylist:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/music/CreatePlaylist;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/music/CreatePlaylist;->mSaveButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/music/CreatePlaylist;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/music/CreatePlaylist;->idForplaylist(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 101
    new-instance v0, Lcom/android/music/CreatePlaylist$1;

    invoke-direct {v0, p0}, Lcom/android/music/CreatePlaylist$1;-><init>(Lcom/android/music/CreatePlaylist;)V

    iput-object v0, p0, Lcom/android/music/CreatePlaylist;->mPlaylistOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 116
    new-instance v0, Lcom/android/music/CreatePlaylist$2;

    invoke-direct {v0, p0}, Lcom/android/music/CreatePlaylist$2;-><init>(Lcom/android/music/CreatePlaylist;)V

    iput-object v0, p0, Lcom/android/music/CreatePlaylist;->mSaveOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 140
    new-instance v0, Lcom/android/music/CreatePlaylist$3;

    invoke-direct {v0, p0}, Lcom/android/music/CreatePlaylist$3;-><init>(Lcom/android/music/CreatePlaylist;)V

    iput-object v0, p0, Lcom/android/music/CreatePlaylist;->mCancelOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 156
    new-instance v0, Lcom/android/music/CreatePlaylist$4;

    invoke-direct {v0, p0}, Lcom/android/music/CreatePlaylist$4;-><init>(Lcom/android/music/CreatePlaylist;)V

    iput-object v0, p0, Lcom/android/music/CreatePlaylist;->mTextWatcher:Landroid/text/TextWatcher;

    .line 260
    new-instance v0, Lcom/android/music/CreatePlaylist$5;

    invoke-direct {v0, p0}, Lcom/android/music/CreatePlaylist$5;-><init>(Lcom/android/music/CreatePlaylist;)V

    iput-object v0, p0, Lcom/android/music/CreatePlaylist;->mOpenClicked:Landroid/view/View$OnClickListener;

    .line 42
    return-void
.end method

.method private idForplaylist(Ljava/lang/String;)I
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 186
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 187
    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v2, v6

    .line 188
    const-string/jumbo v3, "name=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    .line 189
    const-string/jumbo v5, "name"

    move-object v0, p0

    .line 185
    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 190
    const/4 v0, -0x1

    .line 191
    if-eqz v1, :cond_1

    .line 192
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 193
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_0

    .line 194
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 196
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 198
    :cond_1
    return v0
.end method

.method private makePlaylistName()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 212
    const v0, 0x7f070045

    invoke-virtual {p0, v0}, Lcom/android/music/CreatePlaylist;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 215
    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v0, "name"

    aput-object v0, v2, v7

    .line 216
    invoke-virtual {p0}, Lcom/android/music/CreatePlaylist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 217
    const-string/jumbo v3, "name != \'\'"

    .line 220
    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 221
    const-string/jumbo v5, "name"

    const/4 v4, 0x0

    .line 220
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v3, v0

    .line 228
    :goto_0
    if-nez v3, :cond_0

    .line 229
    return-object v8

    .line 222
    :catch_0
    move-exception v0

    .line 224
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    move-object v3, v8

    .line 225
    goto :goto_0

    .line 233
    :cond_0
    new-array v0, v6, [Ljava/lang/Object;

    const/4 v1, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v7

    invoke-static {v9, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move v2, v7

    .line 244
    :goto_1
    if-nez v2, :cond_3

    .line 246
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move v2, v1

    move-object v1, v0

    move v0, v6

    .line 247
    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_2

    .line 248
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 249
    invoke-virtual {v4, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    .line 250
    new-array v1, v6, [Ljava/lang/Object;

    add-int/lit8 v0, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v9, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move v2, v0

    move v0, v7

    .line 253
    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    :cond_2
    move v10, v0

    move-object v0, v1

    move v1, v2

    move v2, v10

    goto :goto_1

    .line 256
    :cond_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 257
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const v5, 0x7f0b001d

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/music/CreatePlaylist;->setVolumeControlStream(I)V

    .line 55
    invoke-virtual {p0, v3}, Lcom/android/music/CreatePlaylist;->requestWindowFeature(I)Z

    .line 56
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/android/music/CreatePlaylist;->setContentView(I)V

    .line 57
    invoke-virtual {p0}, Lcom/android/music/CreatePlaylist;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    .line 58
    const/4 v2, -0x2

    .line 57
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 60
    const v0, 0x7f0b001b

    invoke-virtual {p0, v0}, Lcom/android/music/CreatePlaylist;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/music/CreatePlaylist;->mPrompt:Landroid/widget/TextView;

    .line 61
    const v0, 0x7f0b001e

    invoke-virtual {p0, v0}, Lcom/android/music/CreatePlaylist;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/music/CreatePlaylist;->mPlaylist:Landroid/widget/EditText;

    .line 62
    new-array v0, v3, [Landroid/text/InputFilter;

    .line 63
    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v0, v4

    .line 64
    iget-object v1, p0, Lcom/android/music/CreatePlaylist;->mPlaylist:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 65
    const v0, 0x7f0b001f

    invoke-virtual {p0, v0}, Lcom/android/music/CreatePlaylist;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/music/CreatePlaylist;->mSaveButton:Landroid/widget/Button;

    .line 66
    iget-object v0, p0, Lcom/android/music/CreatePlaylist;->mSaveButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/music/CreatePlaylist;->mOpenClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v0, p0, Lcom/android/music/CreatePlaylist;->mSaveButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/music/CreatePlaylist;->mSaveOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 71
    invoke-virtual {p0, v5}, Lcom/android/music/CreatePlaylist;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/music/CreatePlaylist;->mCancelButton:Landroid/widget/Button;

    .line 72
    iget-object v0, p0, Lcom/android/music/CreatePlaylist;->mCancelButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/music/CreatePlaylist;->mOpenClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/android/music/CreatePlaylist;->mCancelButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/music/CreatePlaylist;->mCancelOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 77
    iget-object v0, p0, Lcom/android/music/CreatePlaylist;->mPlaylist:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/music/CreatePlaylist;->mPlaylistOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 80
    invoke-virtual {p0, v5}, Lcom/android/music/CreatePlaylist;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 81
    new-instance v1, Lcom/android/music/CreatePlaylist$6;

    invoke-direct {v1, p0}, Lcom/android/music/CreatePlaylist$6;-><init>(Lcom/android/music/CreatePlaylist;)V

    .line 80
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    if-eqz p1, :cond_0

    const-string/jumbo v0, "defaultname"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    :goto_0
    if-nez v0, :cond_1

    .line 90
    invoke-virtual {p0}, Lcom/android/music/CreatePlaylist;->finish()V

    .line 91
    return-void

    .line 88
    :cond_0
    invoke-direct {p0}, Lcom/android/music/CreatePlaylist;->makePlaylistName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 93
    :cond_1
    const v1, 0x7f070068

    invoke-virtual {p0, v1}, Lcom/android/music/CreatePlaylist;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 94
    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 95
    iget-object v2, p0, Lcom/android/music/CreatePlaylist;->mPrompt:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v1, p0, Lcom/android/music/CreatePlaylist;->mPlaylist:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v1, p0, Lcom/android/music/CreatePlaylist;->mPlaylist:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 98
    iget-object v0, p0, Lcom/android/music/CreatePlaylist;->mPlaylist:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/music/CreatePlaylist;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 99
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 208
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 209
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 203
    const-string/jumbo v0, "defaultname"

    iget-object v1, p0, Lcom/android/music/CreatePlaylist;->mPlaylist:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    return-void
.end method
