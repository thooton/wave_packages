.class public Lcom/android/providers/contacts/DataRowHandlerForStructuredName;
.super Lcom/android/providers/contacts/DataRowHandler;
.source "DataRowHandlerForStructuredName.java"


# instance fields
.field private final STRUCTURED_FIELDS:[Ljava/lang/String;

.field private final mNameLookupBuilder:Lcom/android/providers/contacts/NameLookupBuilder;

.field private final mSb:Ljava/lang/StringBuilder;

.field private final mSplitter:Lcom/android/providers/contacts/NameSplitter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;Lcom/android/providers/contacts/NameSplitter;Lcom/android/providers/contacts/NameLookupBuilder;)V
    .locals 3

    .prologue
    .line 41
    const-string/jumbo v0, "vnd.android.cursor.item/name"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/providers/contacts/DataRowHandler;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;Ljava/lang/String;)V

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->mSb:Ljava/lang/StringBuilder;

    .line 109
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 110
    const-string/jumbo v1, "data4"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "data2"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "data5"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 111
    const-string/jumbo v1, "data3"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "data6"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 109
    iput-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->STRUCTURED_FIELDS:[Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->mSplitter:Lcom/android/providers/contacts/NameSplitter;

    .line 43
    iput-object p5, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->mNameLookupBuilder:Lcom/android/providers/contacts/NameLookupBuilder;

    .line 44
    return-void
.end method


# virtual methods
.method public appendSearchableData(Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 183
    const-string/jumbo v0, "data1"

    invoke-virtual {p1, v0}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 184
    const-string/jumbo v0, "data10"

    invoke-virtual {p1, v0}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 186
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->mNameLookupBuilder:Lcom/android/providers/contacts/NameLookupBuilder;

    if-eqz v0, :cond_6

    .line 187
    iget-object v4, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->mSplitter:Lcom/android/providers/contacts/NameSplitter;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/android/providers/contacts/NameSplitter;->getAdjustedFullNameStyle(I)I

    move-result v0

    .line 186
    :goto_0
    invoke-virtual {v3, p1, v2, v0}, Lcom/android/providers/contacts/NameLookupBuilder;->appendToSearchIndex(Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;Ljava/lang/String;I)V

    .line 190
    const-string/jumbo v0, "data9"

    invoke-virtual {p1, v0}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    const-string/jumbo v2, "data8"

    invoke-virtual {p1, v2}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 192
    const-string/jumbo v3, "data7"

    invoke-virtual {p1, v3}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 195
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_0

    .line 196
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    .line 195
    if-eqz v4, :cond_5

    .line 197
    :cond_0
    iget-object v4, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 198
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 199
    invoke-virtual {p1, v0}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendName(Ljava/lang/String;)V

    .line 200
    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 203
    invoke-virtual {p1, v2}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendName(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 207
    invoke-virtual {p1, v3}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendName(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    :cond_3
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 211
    const-string/jumbo v0, "data11"

    invoke-virtual {p1, v0}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 212
    if-nez v0, :cond_4

    .line 213
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->mSplitter:Lcom/android/providers/contacts/NameSplitter;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/NameSplitter;->guessPhoneticNameStyle(Ljava/lang/String;)I

    move-result v0

    .line 215
    :cond_4
    invoke-virtual {p1, v1}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendName(Ljava/lang/String;)V

    .line 216
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->mNameLookupBuilder:Lcom/android/providers/contacts/NameLookupBuilder;

    invoke-virtual {v2, p1, v1, v0}, Lcom/android/providers/contacts/NameLookupBuilder;->appendNameShorthandLookup(Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;Ljava/lang/String;I)V

    .line 219
    :cond_5
    return-void

    :cond_6
    move v0, v1

    .line 188
    goto :goto_0
.end method

.method public containsSearchableColumns(Landroid/content/ContentValues;)Z
    .locals 1

    .prologue
    .line 171
    const-string/jumbo v0, "data3"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    const-string/jumbo v0, "data2"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    .line 171
    if-nez v0, :cond_0

    .line 173
    const-string/jumbo v0, "data5"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    .line 171
    if-nez v0, :cond_0

    .line 174
    const-string/jumbo v0, "data9"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    .line 171
    if-nez v0, :cond_0

    .line 175
    const-string/jumbo v0, "data7"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    .line 171
    if-nez v0, :cond_0

    .line 176
    const-string/jumbo v0, "data8"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    .line 171
    if-nez v0, :cond_0

    .line 177
    const-string/jumbo v0, "data4"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    .line 171
    if-nez v0, :cond_0

    .line 178
    const-string/jumbo v0, "data6"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    .line 171
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I
    .locals 6

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 96
    const/4 v2, 0x2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 98
    invoke-super {p0, p1, p2, p3}, Lcom/android/providers/contacts/DataRowHandler;->delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I

    move-result v4

    .line 100
    iget-object v5, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v5, v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->deleteNameLookup(J)V

    .line 101
    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->fixRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;J)V

    .line 102
    invoke-virtual {p0, p2, v2, v3}, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->triggerAggregation(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 103
    return v4
.end method

.method public fixStructuredNameComponents(Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 121
    const-string/jumbo v0, "data1"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 124
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->STRUCTURED_FIELDS:[Ljava/lang/String;

    invoke-virtual {p0, p2, v2}, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->areAllEmpty(Landroid/content/ContentValues;[Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 126
    if-eqz v1, :cond_1

    xor-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_1

    .line 127
    new-instance v1, Lcom/android/providers/contacts/NameSplitter$Name;

    invoke-direct {v1}, Lcom/android/providers/contacts/NameSplitter$Name;-><init>()V

    .line 128
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->mSplitter:Lcom/android/providers/contacts/NameSplitter;

    invoke-virtual {v2, v1, v0}, Lcom/android/providers/contacts/NameSplitter;->split(Lcom/android/providers/contacts/NameSplitter$Name;Ljava/lang/String;)V

    .line 129
    invoke-virtual {v1, p2}, Lcom/android/providers/contacts/NameSplitter$Name;->toValues(Landroid/content/ContentValues;)V

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    if-nez v1, :cond_3

    .line 131
    if-nez v2, :cond_2

    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->STRUCTURED_FIELDS:[Ljava/lang/String;

    invoke-virtual {p0, p2, v3}, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->areAnySpecified(Landroid/content/ContentValues;[Ljava/lang/String;)Z

    move-result v3

    .line 130
    if-eqz v3, :cond_3

    .line 136
    :cond_2
    new-instance v0, Lcom/android/providers/contacts/NameSplitter$Name;

    invoke-direct {v0}, Lcom/android/providers/contacts/NameSplitter$Name;-><init>()V

    .line 137
    invoke-virtual {v0, p1}, Lcom/android/providers/contacts/NameSplitter$Name;->fromValues(Landroid/content/ContentValues;)V

    .line 139
    iput v4, v0, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    .line 140
    iput v4, v0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticNameStyle:I

    .line 141
    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->mSplitter:Lcom/android/providers/contacts/NameSplitter;

    invoke-virtual {v1, v0}, Lcom/android/providers/contacts/NameSplitter;->guessNameStyle(Lcom/android/providers/contacts/NameSplitter$Name;)V

    .line 142
    iget v1, v0, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    .line 143
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->mSplitter:Lcom/android/providers/contacts/NameSplitter;

    iget v3, v0, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    invoke-virtual {v2, v3}, Lcom/android/providers/contacts/NameSplitter;->getAdjustedFullNameStyle(I)I

    move-result v2

    iput v2, v0, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    .line 144
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->mSplitter:Lcom/android/providers/contacts/NameSplitter;

    invoke-virtual {v2, v0, v5, v5}, Lcom/android/providers/contacts/NameSplitter;->join(Lcom/android/providers/contacts/NameSplitter$Name;ZZ)Ljava/lang/String;

    move-result-object v2

    .line 145
    const-string/jumbo v3, "data1"

    invoke-virtual {p2, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string/jumbo v2, "data10"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 148
    const-string/jumbo v1, "data11"

    iget v0, v0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticNameStyle:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 149
    :cond_3
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 150
    const-string/jumbo v1, "data10"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 151
    const-string/jumbo v1, "data10"

    .line 152
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->mSplitter:Lcom/android/providers/contacts/NameSplitter;

    invoke-virtual {v2, v0}, Lcom/android/providers/contacts/NameSplitter;->guessFullNameStyle(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 151
    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 154
    :cond_4
    const-string/jumbo v0, "data11"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Lcom/android/providers/contacts/NameSplitter$Name;

    invoke-direct {v0}, Lcom/android/providers/contacts/NameSplitter$Name;-><init>()V

    .line 156
    invoke-virtual {v0, p2}, Lcom/android/providers/contacts/NameSplitter$Name;->fromValues(Landroid/content/ContentValues;)V

    .line 157
    iput v4, v0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticNameStyle:I

    .line 158
    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->mSplitter:Lcom/android/providers/contacts/NameSplitter;

    invoke-virtual {v1, v0}, Lcom/android/providers/contacts/NameSplitter;->guessNameStyle(Lcom/android/providers/contacts/NameSplitter$Name;)V

    .line 159
    const-string/jumbo v1, "data11"

    iget v0, v0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticNameStyle:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0
.end method

.method public hasSearchableData()Z
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x1

    return v0
.end method

.method public insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J
    .locals 9

    .prologue
    .line 49
    invoke-virtual {p0, p5, p5}, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->fixStructuredNameComponents(Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 51
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandler;->insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J

    move-result-wide v4

    .line 53
    const-string/jumbo v0, "data1"

    invoke-virtual {p5, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 54
    const-string/jumbo v0, "data10"

    invoke-virtual {p5, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->mNameLookupBuilder:Lcom/android/providers/contacts/NameLookupBuilder;

    .line 56
    if-eqz v0, :cond_0

    .line 57
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->mSplitter:Lcom/android/providers/contacts/NameSplitter;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/providers/contacts/NameSplitter;->getAdjustedFullNameStyle(I)I

    move-result v7

    :goto_0
    move-wide v2, p3

    .line 55
    invoke-virtual/range {v1 .. v7}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNameLookup(JJLjava/lang/String;I)V

    .line 59
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->fixRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;J)V

    .line 60
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->triggerAggregation(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 61
    return-wide v4

    .line 58
    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;ZZ)Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 67
    invoke-interface {p4, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 68
    invoke-interface {p4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 70
    invoke-virtual {p0, p1, v4, v5, p3}, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->getAugmentedValues(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v0

    .line 71
    if-nez v0, :cond_0

    .line 72
    return v7

    .line 75
    :cond_0
    invoke-virtual {p0, v0, p3}, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->fixStructuredNameComponents(Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 77
    invoke-super/range {p0 .. p6}, Lcom/android/providers/contacts/DataRowHandler;->update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;ZZ)Z

    .line 78
    const-string/jumbo v1, "data1"

    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 79
    invoke-virtual {v0, p3}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 80
    const-string/jumbo v1, "data1"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 81
    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1, v4, v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->deleteNameLookup(J)V

    .line 82
    const-string/jumbo v1, "data10"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->mNameLookupBuilder:Lcom/android/providers/contacts/NameLookupBuilder;

    .line 84
    if-eqz v0, :cond_1

    .line 85
    iget-object v7, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->mSplitter:Lcom/android/providers/contacts/NameSplitter;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/android/providers/contacts/NameSplitter;->getAdjustedFullNameStyle(I)I

    move-result v7

    .line 83
    :cond_1
    invoke-virtual/range {v1 .. v7}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNameLookup(JJLjava/lang/String;I)V

    .line 88
    :cond_2
    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->fixRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;J)V

    .line 89
    invoke-virtual {p0, p2, v2, v3}, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->triggerAggregation(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 90
    return v8
.end method
