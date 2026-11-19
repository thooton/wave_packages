.class public Lcom/android/providers/contacts/ProfileProvider;
.super Lcom/android/providers/contacts/AbstractContactsProvider;
.source "ProfileProvider.java"


# instance fields
.field private final mDelegate:Lcom/android/providers/contacts/ContactsProvider2;


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/ContactsProvider2;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/providers/contacts/AbstractContactsProvider;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/providers/contacts/ProfileProvider;->mDelegate:Lcom/android/providers/contacts/ContactsProvider2;

    .line 48
    return-void
.end method

.method private sendProfileChangedBroadcast()V
    .locals 3

    .prologue
    .line 158
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.provider.Contacts.PROFILE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 159
    iget-object v1, p0, Lcom/android/providers/contacts/ProfileProvider;->mDelegate:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "android.permission.READ_CONTACTS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 161
    const-string/jumbo v1, "com.android.settings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    iget-object v1, p0, Lcom/android/providers/contacts/ProfileProvider;->mDelegate:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "android.permission.READ_CONTACTS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method private useProfileDbForTransaction()V
    .locals 3

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/android/providers/contacts/ProfileProvider;->getCurrentTransaction()Lcom/android/providers/contacts/ContactsTransaction;

    move-result-object v0

    .line 108
    invoke-virtual {p0}, Lcom/android/providers/contacts/ProfileProvider;->getDatabaseHelper()Lcom/android/providers/contacts/ProfileDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/providers/contacts/ProfileDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 109
    const-string/jumbo v2, "profile"

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/providers/contacts/ContactsTransaction;->startTransactionForDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 110
    return-void
.end method


# virtual methods
.method protected deleteInTransaction(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/providers/contacts/ProfileProvider;->useProfileDbForTransaction()V

    .line 98
    iget-object v0, p0, Lcom/android/providers/contacts/ProfileProvider;->mDelegate:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/providers/contacts/ContactsProvider2;->deleteInTransaction(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 167
    const-string/jumbo v0, "Profile"

    invoke-virtual {p0, p2, v0}, Lcom/android/providers/contacts/ProfileProvider;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public bridge synthetic getDatabaseHelper()Lcom/android/providers/contacts/ContactsDatabaseHelper;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/providers/contacts/ProfileProvider;->getDatabaseHelper()Lcom/android/providers/contacts/ProfileDatabaseHelper;

    move-result-object v0

    return-object v0
.end method

.method public getDatabaseHelper()Lcom/android/providers/contacts/ProfileDatabaseHelper;
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Lcom/android/providers/contacts/AbstractContactsProvider;->getDatabaseHelper()Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ProfileDatabaseHelper;

    return-object v0
.end method

.method protected getTransactionHolder()Ljava/lang/ThreadLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/android/providers/contacts/ContactsTransaction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/providers/contacts/ProfileProvider;->mDelegate:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsProvider2;->getTransactionHolder()Ljava/lang/ThreadLocal;

    move-result-object v0

    return-object v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/providers/contacts/ProfileProvider;->mDelegate:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0, p1}, Lcom/android/providers/contacts/ContactsProvider2;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/providers/contacts/ProfileProvider;->useProfileDbForTransaction()V

    .line 85
    iget-object v0, p0, Lcom/android/providers/contacts/ProfileProvider;->mDelegate:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/ProfileProvider;->newDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/contacts/ProfileDatabaseHelper;

    move-result-object v0

    return-object v0
.end method

.method protected newDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/contacts/ProfileDatabaseHelper;
    .locals 1

    .prologue
    .line 52
    invoke-static {p1}, Lcom/android/providers/contacts/ProfileDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/contacts/ProfileDatabaseHelper;

    move-result-object v0

    return-object v0
.end method

.method protected notifyChange()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/providers/contacts/ProfileProvider;->mDelegate:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsProvider2;->notifyChange()V

    .line 115
    return-void
.end method

.method public onBegin()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/providers/contacts/ProfileProvider;->mDelegate:Lcom/android/providers/contacts/ContactsProvider2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->onBeginTransactionInternal(Z)V

    .line 128
    return-void
.end method

.method public onCommit()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/providers/contacts/ProfileProvider;->mDelegate:Lcom/android/providers/contacts/ContactsProvider2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->onCommitTransactionInternal(Z)V

    .line 133
    invoke-direct {p0}, Lcom/android/providers/contacts/ProfileProvider;->sendProfileChangedBroadcast()V

    .line 134
    return-void
.end method

.method public onRollback()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/providers/contacts/ProfileProvider;->mDelegate:Lcom/android/providers/contacts/ContactsProvider2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->onRollbackTransactionInternal(Z)V

    .line 139
    return-void
.end method

.method public openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/providers/contacts/ProfileProvider;->mDelegate:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->openAssetFileLocal(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    .prologue
    .line 67
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/ProfileProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 9

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/providers/contacts/ProfileProvider;->mQueryStats:Landroid/util/SparseLongArray;

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ProfileProvider;->incrementStats(Landroid/util/SparseLongArray;)V

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/contacts/ProfileProvider;->mDelegate:Lcom/android/providers/contacts/ContactsProvider2;

    const-wide/16 v6, -0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/providers/contacts/ContactsProvider2;->queryLocal(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;JLandroid/os/CancellationSignal;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 78
    invoke-virtual {p0}, Lcom/android/providers/contacts/ProfileProvider;->finishOperation()V

    .line 75
    return-object v0

    .line 77
    :catchall_0
    move-exception v0

    .line 78
    invoke-virtual {p0}, Lcom/android/providers/contacts/ProfileProvider;->finishOperation()V

    .line 77
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    const-string/jumbo v0, "ProfileProvider"

    return-object v0
.end method

.method protected updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/providers/contacts/ProfileProvider;->useProfileDbForTransaction()V

    .line 92
    iget-object v0, p0, Lcom/android/providers/contacts/ProfileProvider;->mDelegate:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/providers/contacts/ContactsProvider2;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected yield(Lcom/android/providers/contacts/ContactsTransaction;)Z
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/providers/contacts/ProfileProvider;->mDelegate:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0, p1}, Lcom/android/providers/contacts/ContactsProvider2;->yield(Lcom/android/providers/contacts/ContactsTransaction;)Z

    move-result v0

    return v0
.end method
