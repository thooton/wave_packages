.class public Lcom/android/providers/contacts/DataRowHandlerForStructuredPostal;
.super Lcom/android/providers/contacts/DataRowHandler;
.source "DataRowHandlerForStructuredPostal.java"


# instance fields
.field private final STRUCTURED_FIELDS:[Ljava/lang/String;

.field private final mSplitter:Lcom/android/providers/contacts/PostalSplitter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;Lcom/android/providers/contacts/PostalSplitter;)V
    .locals 3

    .prologue
    .line 50
    const-string/jumbo v0, "vnd.android.cursor.item/postal-address_v2"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/providers/contacts/DataRowHandler;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;Ljava/lang/String;)V

    .line 36
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    .line 37
    const-string/jumbo v1, "data4"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 38
    const-string/jumbo v1, "data5"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 39
    const-string/jumbo v1, "data6"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 40
    const-string/jumbo v1, "data7"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 41
    const-string/jumbo v1, "data8"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 42
    const-string/jumbo v1, "data9"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 43
    const-string/jumbo v1, "data10"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 36
    iput-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredPostal;->STRUCTURED_FIELDS:[Ljava/lang/String;

    .line 51
    iput-object p4, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredPostal;->mSplitter:Lcom/android/providers/contacts/PostalSplitter;

    .line 52
    return-void
.end method

.method private fixStructuredPostalComponents(Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .locals 5

    .prologue
    .line 82
    const-string/jumbo v0, "data1"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 85
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredPostal;->STRUCTURED_FIELDS:[Ljava/lang/String;

    invoke-virtual {p0, p2, v2}, Lcom/android/providers/contacts/DataRowHandlerForStructuredPostal;->areAllEmpty(Landroid/content/ContentValues;[Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 87
    new-instance v3, Lcom/android/providers/contacts/PostalSplitter$Postal;

    invoke-direct {v3}, Lcom/android/providers/contacts/PostalSplitter$Postal;-><init>()V

    .line 89
    if-eqz v1, :cond_1

    xor-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_1

    .line 90
    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredPostal;->mSplitter:Lcom/android/providers/contacts/PostalSplitter;

    invoke-virtual {v1, v3, v0}, Lcom/android/providers/contacts/PostalSplitter;->split(Lcom/android/providers/contacts/PostalSplitter$Postal;Ljava/lang/String;)V

    .line 91
    invoke-virtual {v3, p2}, Lcom/android/providers/contacts/PostalSplitter$Postal;->toValues(Landroid/content/ContentValues;)V

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    if-nez v1, :cond_0

    .line 93
    if-nez v2, :cond_2

    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredPostal;->STRUCTURED_FIELDS:[Ljava/lang/String;

    invoke-virtual {p0, p2, v0}, Lcom/android/providers/contacts/DataRowHandlerForStructuredPostal;->areAnySpecified(Landroid/content/ContentValues;[Ljava/lang/String;)Z

    move-result v0

    .line 92
    if-eqz v0, :cond_0

    .line 94
    :cond_2
    invoke-virtual {v3, p1}, Lcom/android/providers/contacts/PostalSplitter$Postal;->fromValues(Landroid/content/ContentValues;)V

    .line 95
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredPostal;->mSplitter:Lcom/android/providers/contacts/PostalSplitter;

    invoke-virtual {v0, v3}, Lcom/android/providers/contacts/PostalSplitter;->join(Lcom/android/providers/contacts/PostalSplitter$Postal;)Ljava/lang/String;

    move-result-object v0

    .line 96
    const-string/jumbo v1, "data1"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public appendSearchableData(Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;)V
    .locals 1

    .prologue
    .line 113
    const-string/jumbo v0, "data1"

    invoke-virtual {p1, v0}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendContentFromColumn(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public containsSearchableColumns(Landroid/content/ContentValues;)Z
    .locals 1

    .prologue
    .line 108
    const-string/jumbo v0, "data1"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasSearchableData()Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x1

    return v0
.end method

.method public insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J
    .locals 3

    .prologue
    .line 57
    invoke-direct {p0, p5, p5}, Lcom/android/providers/contacts/DataRowHandlerForStructuredPostal;->fixStructuredPostalComponents(Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 58
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandler;->insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;ZZ)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-interface {p4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 65
    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/android/providers/contacts/DataRowHandlerForStructuredPostal;->getAugmentedValues(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v0

    .line 66
    if-nez v0, :cond_0

    .line 67
    return v2

    .line 70
    :cond_0
    invoke-direct {p0, v0, p3}, Lcom/android/providers/contacts/DataRowHandlerForStructuredPostal;->fixStructuredPostalComponents(Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 71
    invoke-super/range {p0 .. p6}, Lcom/android/providers/contacts/DataRowHandler;->update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;ZZ)Z

    .line 72
    const/4 v0, 0x1

    return v0
.end method
