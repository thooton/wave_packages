.class public Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;
.super Lcom/android/providers/contacts/DataRowHandler;
.source "DataRowHandlerForCommonDataKind.java"


# instance fields
.field private final mLabelColumn:Ljava/lang/String;

.field private final mTypeColumn:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/DataRowHandler;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;Ljava/lang/String;)V

    .line 39
    iput-object p5, p0, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->mTypeColumn:Ljava/lang/String;

    .line 40
    iput-object p6, p0, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->mLabelColumn:Ljava/lang/String;

    .line 41
    return-void
.end method

.method private enforceTypeAndLabel(Landroid/content/ContentValues;)V
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->mTypeColumn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 70
    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->mLabelColumn:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 72
    if-eqz v1, :cond_0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->mTypeColumn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must be specified when "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 75
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->mLabelColumn:Ljava/lang/String;

    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 75
    const-string/jumbo v2, " is defined."

    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    return-void
.end method


# virtual methods
.method public hasSearchableData()Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x1

    return v0
.end method

.method public insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J
    .locals 3

    .prologue
    .line 46
    invoke-direct {p0, p5}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->enforceTypeAndLabel(Landroid/content/ContentValues;)V

    .line 47
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandler;->insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;ZZ)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-interface {p4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 54
    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->getAugmentedValues(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v0

    .line 55
    if-nez v0, :cond_0

    .line 56
    return v2

    .line 58
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->enforceTypeAndLabel(Landroid/content/ContentValues;)V

    .line 59
    invoke-super/range {p0 .. p6}, Lcom/android/providers/contacts/DataRowHandler;->update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;ZZ)Z

    move-result v0

    return v0
.end method
