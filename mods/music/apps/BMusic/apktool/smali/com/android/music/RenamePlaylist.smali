.class public Lcom/android/music/RenamePlaylist;
.super Landroid/app/Activity;
.source "RenamePlaylist.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/RenamePlaylist$1;,
        Lcom/android/music/RenamePlaylist$2;,
        Lcom/android/music/RenamePlaylist$3;,
        Lcom/android/music/RenamePlaylist$4;,
        Lcom/android/music/RenamePlaylist$5;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mCancelOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mOpenClicked:Landroid/view/View$OnClickListener;

.field private mOriginalName:Ljava/lang/String;

.field private mPlaylist:Landroid/widget/EditText;

.field private mPlaylistOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mPrompt:Landroid/widget/TextView;

.field private mRenameId:J

.field private mSaveButton:Landroid/widget/Button;

.field private mSaveOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field mTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method static synthetic -get0(Lcom/android/music/RenamePlaylist;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/music/RenamePlaylist;->mCancelButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/music/RenamePlaylist;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/music/RenamePlaylist;->mOriginalName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/music/RenamePlaylist;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/music/RenamePlaylist;->mPlaylist:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/music/RenamePlaylist;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/music/RenamePlaylist;->mRenameId:J

    return-wide v0
.end method

.method static synthetic -get4(Lcom/android/music/RenamePlaylist;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/music/RenamePlaylist;->mSaveButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/music/RenamePlaylist;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/music/RenamePlaylist;->idForplaylist(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/music/RenamePlaylist;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/music/RenamePlaylist;->dataForPlaylist(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/music/RenamePlaylist;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/music/RenamePlaylist;->setSaveButton()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-string/jumbo v0, "RenamePlaylist"

    sput-object v0, Lcom/android/music/RenamePlaylist;->TAG:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 113
    new-instance v0, Lcom/android/music/RenamePlaylist$1;

    invoke-direct {v0, p0}, Lcom/android/music/RenamePlaylist$1;-><init>(Lcom/android/music/RenamePlaylist;)V

    iput-object v0, p0, Lcom/android/music/RenamePlaylist;->mSaveOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 127
    new-instance v0, Lcom/android/music/RenamePlaylist$2;

    invoke-direct {v0, p0}, Lcom/android/music/RenamePlaylist$2;-><init>(Lcom/android/music/RenamePlaylist;)V

    iput-object v0, p0, Lcom/android/music/RenamePlaylist;->mPlaylistOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 141
    new-instance v0, Lcom/android/music/RenamePlaylist$3;

    invoke-direct {v0, p0}, Lcom/android/music/RenamePlaylist$3;-><init>(Lcom/android/music/RenamePlaylist;)V

    iput-object v0, p0, Lcom/android/music/RenamePlaylist;->mCancelOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 157
    new-instance v0, Lcom/android/music/RenamePlaylist$4;

    invoke-direct {v0, p0}, Lcom/android/music/RenamePlaylist$4;-><init>(Lcom/android/music/RenamePlaylist;)V

    iput-object v0, p0, Lcom/android/music/RenamePlaylist;->mTextWatcher:Landroid/text/TextWatcher;

    .line 254
    new-instance v0, Lcom/android/music/RenamePlaylist$5;

    invoke-direct {v0, p0}, Lcom/android/music/RenamePlaylist$5;-><init>(Lcom/android/music/RenamePlaylist;)V

    iput-object v0, p0, Lcom/android/music/RenamePlaylist;->mOpenClicked:Landroid/view/View$OnClickListener;

    .line 41
    return-void
.end method

.method private dataForPlaylist(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 192
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 193
    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v0, "_data"

    aput-object v0, v2, v7

    .line 194
    const-string/jumbo v3, "name=?"

    .line 195
    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v7

    .line 196
    const-string/jumbo v5, "name"

    move-object v0, p0

    .line 192
    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 198
    if-eqz v1, :cond_1

    .line 199
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 200
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 203
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 205
    :goto_1
    return-object v0

    :cond_0
    move-object v0, v6

    goto :goto_0

    :cond_1
    move-object v0, v6

    goto :goto_1
.end method

.method private idForplaylist(Ljava/lang/String;)I
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 210
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 211
    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v2, v6

    .line 212
    const-string/jumbo v3, "name=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    .line 213
    const-string/jumbo v5, "name"

    move-object v0, p0

    .line 209
    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 214
    const/4 v0, -0x1

    .line 215
    if-eqz v1, :cond_1

    .line 216
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 217
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_0

    .line 218
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 220
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 222
    :cond_1
    return v0
.end method

.method private nameForId(J)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 227
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 228
    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v0, "name"

    aput-object v0, v2, v7

    .line 229
    const-string/jumbo v3, "_id=?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    .line 231
    const-string/jumbo v5, "name"

    move-object v0, p0

    .line 226
    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 233
    if-eqz v1, :cond_0

    .line 234
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 235
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 239
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 240
    return-object v0

    :cond_0
    move-object v0, v6

    goto :goto_0
.end method

.method private setSaveButton()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 176
    iget-object v0, p0, Lcom/android/music/RenamePlaylist;->mPlaylist:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/music/RenamePlaylist;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 189
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/music/RenamePlaylist;->mSaveButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 185
    iget-object v0, p0, Lcom/android/music/RenamePlaylist;->mSaveButton:Landroid/widget/Button;

    const v1, 0x7f070047

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const v4, 0x7f0b001d

    const/high16 v3, 0x1060000

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/music/RenamePlaylist;->setVolumeControlStream(I)V

    .line 54
    invoke-virtual {p0, v6}, Lcom/android/music/RenamePlaylist;->requestWindowFeature(I)Z

    .line 55
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/android/music/RenamePlaylist;->setContentView(I)V

    .line 56
    invoke-virtual {p0}, Lcom/android/music/RenamePlaylist;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    .line 57
    const/4 v2, -0x2

    .line 56
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 59
    const v0, 0x7f0b001b

    invoke-virtual {p0, v0}, Lcom/android/music/RenamePlaylist;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/music/RenamePlaylist;->mPrompt:Landroid/widget/TextView;

    .line 60
    const v0, 0x7f0b001e

    invoke-virtual {p0, v0}, Lcom/android/music/RenamePlaylist;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/music/RenamePlaylist;->mPlaylist:Landroid/widget/EditText;

    .line 61
    new-array v0, v6, [Landroid/text/InputFilter;

    .line 62
    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v0, v7

    .line 63
    iget-object v1, p0, Lcom/android/music/RenamePlaylist;->mPlaylist:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 64
    const v0, 0x7f0b001f

    invoke-virtual {p0, v0}, Lcom/android/music/RenamePlaylist;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/music/RenamePlaylist;->mSaveButton:Landroid/widget/Button;

    .line 65
    iget-object v0, p0, Lcom/android/music/RenamePlaylist;->mSaveButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/music/RenamePlaylist;->mOpenClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v0, p0, Lcom/android/music/RenamePlaylist;->mSaveButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/music/RenamePlaylist;->mSaveOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 68
    iget-object v0, p0, Lcom/android/music/RenamePlaylist;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 70
    iget-object v0, p0, Lcom/android/music/RenamePlaylist;->mPlaylist:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/music/RenamePlaylist;->mPlaylistOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 71
    iget-object v0, p0, Lcom/android/music/RenamePlaylist;->mPlaylist:Landroid/widget/EditText;

    const v1, 0x106000b

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 73
    invoke-virtual {p0, v4}, Lcom/android/music/RenamePlaylist;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/music/RenamePlaylist;->mCancelButton:Landroid/widget/Button;

    .line 74
    iget-object v0, p0, Lcom/android/music/RenamePlaylist;->mCancelButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/music/RenamePlaylist;->mOpenClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/android/music/RenamePlaylist;->mCancelButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/music/RenamePlaylist;->mCancelOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 77
    iget-object v0, p0, Lcom/android/music/RenamePlaylist;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 79
    invoke-virtual {p0, v4}, Lcom/android/music/RenamePlaylist;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 80
    new-instance v1, Lcom/android/music/RenamePlaylist$6;

    invoke-direct {v1, p0}, Lcom/android/music/RenamePlaylist$6;-><init>(Lcom/android/music/RenamePlaylist;)V

    .line 79
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    if-eqz p1, :cond_1

    const-string/jumbo v0, "rename"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/android/music/RenamePlaylist;->mRenameId:J

    .line 88
    iget-wide v0, p0, Lcom/android/music/RenamePlaylist;->mRenameId:J

    invoke-direct {p0, v0, v1}, Lcom/android/music/RenamePlaylist;->nameForId(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/RenamePlaylist;->mOriginalName:Ljava/lang/String;

    .line 89
    if-eqz p1, :cond_2

    const-string/jumbo v0, "defaultname"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    :goto_1
    iget-wide v2, p0, Lcom/android/music/RenamePlaylist;->mRenameId:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/android/music/RenamePlaylist;->mOriginalName:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 93
    :cond_0
    const-string/jumbo v1, "@@@@"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  Rename failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/music/RenamePlaylist;->mRenameId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-virtual {p0}, Lcom/android/music/RenamePlaylist;->finish()V

    .line 95
    return-void

    .line 86
    :cond_1
    invoke-virtual {p0}, Lcom/android/music/RenamePlaylist;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 87
    const-string/jumbo v1, "rename"

    const-wide/16 v2, -0x1

    .line 86
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/android/music/RenamePlaylist;->mOriginalName:Ljava/lang/String;

    goto :goto_1

    .line 92
    :cond_3
    if-eqz v0, :cond_0

    .line 99
    iget-object v1, p0, Lcom/android/music/RenamePlaylist;->mOriginalName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 100
    const v1, 0x7f070069

    invoke-virtual {p0, v1}, Lcom/android/music/RenamePlaylist;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 105
    :goto_2
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/music/RenamePlaylist;->mOriginalName:Ljava/lang/String;

    aput-object v3, v2, v7

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 106
    iget-object v2, p0, Lcom/android/music/RenamePlaylist;->mPrompt:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v1, p0, Lcom/android/music/RenamePlaylist;->mPlaylist:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v1, p0, Lcom/android/music/RenamePlaylist;->mPlaylist:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 109
    iget-object v0, p0, Lcom/android/music/RenamePlaylist;->mPlaylist:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/music/RenamePlaylist;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 110
    invoke-direct {p0}, Lcom/android/music/RenamePlaylist;->setSaveButton()V

    .line 111
    return-void

    .line 102
    :cond_4
    const v1, 0x7f07006a

    invoke-virtual {p0, v1}, Lcom/android/music/RenamePlaylist;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 251
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 252
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 245
    const-string/jumbo v0, "defaultname"

    iget-object v1, p0, Lcom/android/music/RenamePlaylist;->mPlaylist:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string/jumbo v0, "rename"

    iget-wide v2, p0, Lcom/android/music/RenamePlaylist;->mRenameId:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 247
    return-void
.end method
