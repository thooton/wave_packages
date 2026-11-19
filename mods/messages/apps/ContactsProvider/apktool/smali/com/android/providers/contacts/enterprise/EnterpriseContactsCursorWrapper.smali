.class public Lcom/android/providers/contacts/enterprise/EnterpriseContactsCursorWrapper;
.super Landroid/database/CursorWrapper;
.source "EnterpriseContactsCursorWrapper.java"


# static fields
.field private static final VERBOSE_LOGGING:Z

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private final contactIdIndices:[I

.field private final mDirectoryId:Ljava/lang/Long;

.field private final mIsDirectoryRemote:Z

.field private final originalColumnNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    const-string/jumbo v0, "EnterpriseCursorWrapper"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/providers/contacts/enterprise/EnterpriseContactsCursorWrapper;->VERBOSE_LOGGING:Z

    .line 46
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sUriMatcher:Lcom/android/providers/contacts/ProfileAwareUriMatcher;

    sput-object v0, Lcom/android/providers/contacts/enterprise/EnterpriseContactsCursorWrapper;->sUriMatcher:Landroid/content/UriMatcher;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;[Ljava/lang/String;[ILjava/lang/Long;)V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 61
    iput-object p3, p0, Lcom/android/providers/contacts/enterprise/EnterpriseContactsCursorWrapper;->contactIdIndices:[I

    .line 62
    iput-object p2, p0, Lcom/android/providers/contacts/enterprise/EnterpriseContactsCursorWrapper;->originalColumnNames:[Ljava/lang/String;

    .line 63
    iput-object p4, p0, Lcom/android/providers/contacts/enterprise/EnterpriseContactsCursorWrapper;->mDirectoryId:Ljava/lang/Long;

    .line 64
    if-eqz p4, :cond_0

    .line 65
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/provider/ContactsContract$Directory;->isRemoteDirectoryId(J)Z

    move-result v0

    .line 64
    :goto_0
    iput-boolean v0, p0, Lcom/android/providers/contacts/enterprise/EnterpriseContactsCursorWrapper;->mIsDirectoryRemote:Z

    .line 66
    return-void

    .line 64
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getCorpDisplayPhotoUri(JLandroid/database/Cursor;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 195
    const-string/jumbo v0, "photo_uri"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 196
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 197
    if-nez v0, :cond_0

    .line 198
    return-object v2

    .line 201
    :cond_0
    sget-object v1, Lcom/android/providers/contacts/enterprise/EnterpriseContactsCursorWrapper;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 202
    const/16 v1, 0x3f1

    if-ne v0, v1, :cond_1

    .line 203
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CORP_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 204
    const-string/jumbo v1, "photo"

    .line 203
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 205
    :cond_1
    const/16 v1, 0x3f4

    if-eq v0, v1, :cond_2

    .line 206
    const/16 v1, 0x55f0

    if-ne v0, v1, :cond_3

    .line 207
    :cond_2
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CORP_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 208
    const-string/jumbo v1, "display_photo"

    .line 207
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 210
    :cond_3
    const-string/jumbo v0, "EnterpriseCursorWrapper"

    const-string/jumbo v1, "EnterpriseContactsCursorWrapper contains invalid PHOTO_URI"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return-object v2
.end method

.method private static getCorpThumbnailUri(JLandroid/database/Cursor;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 169
    const-string/jumbo v0, "photo_thumb_uri"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 170
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 171
    if-nez v0, :cond_0

    .line 173
    return-object v2

    .line 176
    :cond_0
    sget-object v1, Lcom/android/providers/contacts/enterprise/EnterpriseContactsCursorWrapper;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 177
    const/16 v1, 0x3f1

    if-ne v0, v1, :cond_1

    .line 178
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CORP_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 179
    const-string/jumbo v1, "photo"

    .line 178
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 181
    :cond_1
    const-string/jumbo v0, "EnterpriseCursorWrapper"

    const-string/jumbo v1, "EnterpriseContactsCursorWrapper contains invalid PHOTO_THUMBNAIL_URI"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return-object v2
.end method

.method private getRemoteDirectoryFileUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 144
    if-nez p1, :cond_0

    .line 145
    return-object v0

    .line 150
    :cond_0
    sget-object v0, Landroid/provider/ContactsContract$Directory;->ENTERPRISE_FILE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 151
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 152
    const-string/jumbo v1, "directory"

    iget-object v2, p0, Lcom/android/providers/contacts/enterprise/EnterpriseContactsCursorWrapper;->mDirectoryId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 153
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    sget-boolean v1, Lcom/android/providers/contacts/enterprise/EnterpriseContactsCursorWrapper;->VERBOSE_LOGGING:Z

    if-eqz v1, :cond_1

    .line 155
    const-string/jumbo v1, "EnterpriseCursorWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getCorpDirectoryFileUri: output URI="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_1
    return-object v0
.end method


# virtual methods
.method public getColumnCount()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/providers/contacts/enterprise/EnterpriseContactsCursorWrapper;->originalColumnNames:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/providers/contacts/enterprise/EnterpriseContactsCursorWrapper;->originalColumnNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getInt(I)I
    .locals 2

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/enterprise/EnterpriseContactsCursorWrapper;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getLong(I)J
    .locals 4

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v0

    .line 129
    iget-object v2, p0, Lcom/android/providers/contacts/enterprise/EnterpriseContactsCursorWrapper;->contactIdIndices:[I

    invoke-static {v2, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    sget-wide v2, Landroid/provider/ContactsContract$Contacts;->ENTERPRISE_CONTACT_ID_BASE:J

    add-long/2addr v0, v2

    return-wide v0

    .line 132
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/enterprise/EnterpriseContactsCursorWrapper;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    .line 133
    const-string/jumbo v3, "photo_file_id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 136
    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0

    .line 133
    :cond_2
    const-string/jumbo v3, "photo_id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 138
    return-wide v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    .line 82
    iget-object v3, p0, Lcom/android/providers/contacts/enterprise/EnterpriseContactsCursorWrapper;->contactIdIndices:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-super {p0, v3}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v4

    .line 83
    const-string/jumbo v3, "photo_thumb_uri"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 85
    iget-boolean v0, p0, Lcom/android/providers/contacts/enterprise/EnterpriseContactsCursorWrapper;->mIsDirectoryRemote:Z

    if-eqz v0, :cond_5

    .line 86
    invoke-direct {p0, v1}, Lcom/android/providers/contacts/enterprise/EnterpriseContactsCursorWrapper;->getRemoteDirectoryFileUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 83
    :cond_0
    const-string/jumbo v3, "photo_uri"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 91
    iget-boolean v0, p0, Lcom/android/providers/contacts/enterprise/EnterpriseContactsCursorWrapper;->mIsDirectoryRemote:Z

    if-eqz v0, :cond_6

    .line 92
    invoke-direct {p0, v1}, Lcom/android/providers/contacts/enterprise/EnterpriseContactsCursorWrapper;->getRemoteDirectoryFileUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 83
    :cond_1
    const-string/jumbo v3, "photo_file_id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 98
    :cond_2
    return-object v0

    .line 83
    :cond_3
    const-string/jumbo v3, "photo_id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "custom_ringtone"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 100
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 103
    if-eqz v1, :cond_7

    .line 104
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 105
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 104
    invoke-virtual {v2, v3}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 103
    if-eqz v2, :cond_a

    .line 108
    :goto_0
    return-object v0

    .line 83
    :cond_4
    const-string/jumbo v3, "lookup"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 110
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 112
    return-object v0

    .line 88
    :cond_5
    invoke-virtual {p0}, Lcom/android/providers/contacts/enterprise/EnterpriseContactsCursorWrapper;->getWrappedCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v4, v5, v0}, Lcom/android/providers/contacts/enterprise/EnterpriseContactsCursorWrapper;->getCorpThumbnailUri(JLandroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 94
    :cond_6
    invoke-virtual {p0}, Lcom/android/providers/contacts/enterprise/EnterpriseContactsCursorWrapper;->getWrappedCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v4, v5, v0}, Lcom/android/providers/contacts/enterprise/EnterpriseContactsCursorWrapper;->getCorpDisplayPhotoUri(JLandroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7
    move-object v0, v1

    .line 105
    goto :goto_0

    .line 114
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->ENTERPRISE_CONTACT_LOOKUP_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 117
    :cond_9
    return-object v1

    :cond_a
    move-object v0, v1

    goto :goto_0
.end method
