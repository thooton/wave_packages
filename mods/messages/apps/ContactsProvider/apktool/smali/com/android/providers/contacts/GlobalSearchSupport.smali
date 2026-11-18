.class public Lcom/android/providers/contacts/GlobalSearchSupport;
.super Ljava/lang/Object;
.source "GlobalSearchSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;
    }
.end annotation


# static fields
.field private static final SEARCH_SUGGESTIONS_COLUMNS:[Ljava/lang/String;


# instance fields
.field private final mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    .line 49
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 50
    const-string/jumbo v1, "suggest_text_1"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 51
    const-string/jumbo v1, "suggest_text_2"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 52
    const-string/jumbo v1, "suggest_icon_1"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 53
    const-string/jumbo v1, "suggest_icon_2"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 54
    const-string/jumbo v1, "suggest_intent_data"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 55
    const-string/jumbo v1, "suggest_intent_action"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 56
    const-string/jumbo v1, "suggest_shortcut_id"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 57
    const-string/jumbo v1, "suggest_intent_extra_data"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 58
    const-string/jumbo v1, "suggest_last_access_hint"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 48
    sput-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->SEARCH_SUGGESTIONS_COLUMNS:[Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/android/providers/contacts/ContactsProvider2;)V
    .locals 2

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object p1, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    .line 172
    iget-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 171
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 180
    return-void
.end method

.method private addSearchSuggestionsBasedOnFilter(Landroid/database/MatrixCursor;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 12

    .prologue
    .line 227
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v11, v2, 0x1

    .line 229
    const-string/jumbo v2, "SELECT _id, lookup, photo_thumb_uri, display_name, (SELECT mode FROM agg_presence WHERE presence_contact_id=contacts._id) AS contact_presence, last_time_contacted"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    if-eqz v11, :cond_0

    .line 237
    const-string/jumbo v2, ", snippet"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    :cond_0
    const-string/jumbo v2, " FROM "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    const-string/jumbo v2, "view_contacts"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    const-string/jumbo v2, " AS contacts"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    if-eqz v11, :cond_1

    .line 243
    iget-object v2, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    .line 244
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    .line 245
    const-string/jumbo v8, "\u2026"

    .line 243
    const/4 v5, 0x1

    .line 245
    const/4 v9, 0x5

    const/4 v10, 0x0

    move-object/from16 v4, p5

    .line 243
    invoke-virtual/range {v2 .. v10}, Lcom/android/providers/contacts/ContactsProvider2;->appendSearchIndexJoin(Ljava/lang/StringBuilder;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 247
    :cond_1
    const-string/jumbo v2, " WHERE lookup IS NOT NULL"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    if-eqz p4, :cond_2

    .line 249
    const-string/jumbo v2, " AND "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    :cond_2
    if-eqz p6, :cond_3

    .line 252
    const-string/jumbo v2, " LIMIT "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p7

    invoke-virtual {p2, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    .line 255
    new-instance v4, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;

    const/4 v2, 0x0

    invoke-direct {v4, v2}, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;-><init>(Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;)V

    .line 256
    move-object/from16 v0, p5

    iput-object v0, v4, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->filter:Ljava/lang/String;

    .line 258
    :goto_0
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 259
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->contactId:J

    .line 260
    const/4 v2, 0x1

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->lookupKey:Ljava/lang/String;

    .line 261
    const/4 v2, 0x2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->photoUri:Ljava/lang/String;

    .line 262
    const/4 v2, 0x3

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->text1:Ljava/lang/String;

    .line 263
    const/4 v2, 0x4

    invoke-interface {v3, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, -0x1

    :goto_1
    iput v2, v4, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->presence:I

    .line 264
    const/4 v2, 0x5

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->lastAccessTime:Ljava/lang/String;

    .line 265
    if-eqz v11, :cond_4

    .line 266
    const/4 v2, 0x6

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/providers/contacts/GlobalSearchSupport;->shortenSnippet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->text2:Ljava/lang/String;

    .line 268
    :cond_4
    invoke-virtual {v4, p3}, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->asList([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 269
    invoke-virtual {v4}, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 271
    :catchall_0
    move-exception v2

    .line 272
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 271
    throw v2

    .line 263
    :cond_5
    const/4 v2, 0x4

    :try_start_1
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    goto :goto_1

    .line 272
    :cond_6
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 274
    return-object p1
.end method

.method private shortenSnippet(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0xa

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 278
    if-nez p1, :cond_0

    .line 279
    return-object v5

    .line 282
    :cond_0
    const/4 v0, 0x0

    .line 283
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 284
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 285
    if-ne v1, v3, :cond_1

    .line 286
    return-object v5

    .line 289
    :cond_1
    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    .line 290
    if-eq v1, v3, :cond_2

    .line 291
    add-int/lit8 v0, v1, 0x1

    .line 293
    :cond_2
    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 294
    if-eq v1, v3, :cond_5

    .line 295
    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 296
    if-eq v1, v3, :cond_5

    .line 301
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    :goto_1
    if-ge v0, v1, :cond_4

    .line 303
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 304
    if-eq v3, v4, :cond_3

    if-eq v3, v4, :cond_3

    .line 305
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 302
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 308
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public handleSearchShortcutRefresh(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0, p1, p3}, Lcom/android/providers/contacts/ContactsProvider2;->lookupContactIdByLookupKey(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    move-wide v2, v0

    .line 217
    :goto_0
    new-instance v1, Landroid/database/MatrixCursor;

    .line 218
    if-nez p2, :cond_0

    sget-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->SEARCH_SUGGESTIONS_COLUMNS:[Ljava/lang/String;

    .line 217
    :goto_1
    invoke-direct {v1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "contacts._id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move-object v7, p5

    .line 219
    invoke-direct/range {v0 .. v7}, Lcom/android/providers/contacts/GlobalSearchSupport;->addSearchSuggestionsBasedOnFilter(Landroid/database/MatrixCursor;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    const-wide/16 v0, -0x1

    move-wide v2, v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    .line 218
    goto :goto_1
.end method

.method public handleSearchSuggestionsQuery(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 184
    new-instance v1, Landroid/database/MatrixCursor;

    .line 185
    if-nez p3, :cond_0

    sget-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->SEARCH_SUGGESTIONS_COLUMNS:[Ljava/lang/String;

    .line 184
    :goto_0
    invoke-direct {v1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 187
    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_1

    .line 196
    :goto_1
    return-object v1

    :cond_0
    move-object v0, p3

    .line 185
    goto :goto_0

    .line 191
    :cond_1
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    move-object v6, p4

    move-object v7, p5

    .line 192
    invoke-direct/range {v0 .. v7}, Lcom/android/providers/contacts/GlobalSearchSupport;->addSearchSuggestionsBasedOnFilter(Landroid/database/MatrixCursor;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    goto :goto_1
.end method
