.class public Lcom/android/providers/contacts/TransactionContext;
.super Ljava/lang/Object;
.source "TransactionContext.java"


# instance fields
.field private mBackupIdChangedRawContacts:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mChangedRawContacts:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mDirtyRawContacts:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mForProfile:Z

.field private mInsertedRawContactsAccounts:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mMetadataDirtyRawContacts:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mStaleSearchIndexContacts:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mStaleSearchIndexRawContacts:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdatedRawContacts:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdatedSyncStates:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-boolean p1, p0, Lcom/android/providers/contacts/TransactionContext;->mForProfile:Z

    .line 52
    return-void
.end method


# virtual methods
.method public clearAll()V
    .locals 0

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/android/providers/contacts/TransactionContext;->clearExceptSearchIndexUpdates()V

    .line 191
    invoke-virtual {p0}, Lcom/android/providers/contacts/TransactionContext;->clearSearchIndexUpdates()V

    .line 192
    return-void
.end method

.method public clearExceptSearchIndexUpdates()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 175
    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mInsertedRawContactsAccounts:Landroid/util/ArrayMap;

    .line 176
    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mUpdatedRawContacts:Landroid/util/ArraySet;

    .line 177
    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mUpdatedSyncStates:Landroid/util/ArrayMap;

    .line 178
    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mDirtyRawContacts:Landroid/util/ArraySet;

    .line 179
    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mMetadataDirtyRawContacts:Landroid/util/ArraySet;

    .line 180
    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mChangedRawContacts:Landroid/util/ArraySet;

    .line 181
    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mBackupIdChangedRawContacts:Landroid/util/ArraySet;

    .line 182
    return-void
.end method

.method public clearSearchIndexUpdates()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 185
    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mStaleSearchIndexRawContacts:Landroid/util/ArraySet;

    .line 186
    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mStaleSearchIndexContacts:Landroid/util/ArraySet;

    .line 187
    return-void
.end method

.method public getAccountIdOrNullForRawContact(J)Ljava/lang/Long;
    .locals 3

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mInsertedRawContactsAccounts:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mInsertedRawContactsAccounts:Landroid/util/ArrayMap;

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mInsertedRawContactsAccounts:Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public getBackupIdChangedRawContacts()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mBackupIdChangedRawContacts:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mBackupIdChangedRawContacts:Landroid/util/ArraySet;

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mBackupIdChangedRawContacts:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getChangedRawContactIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mChangedRawContacts:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mChangedRawContacts:Landroid/util/ArraySet;

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mChangedRawContacts:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getDirtyRawContactIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mDirtyRawContacts:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mDirtyRawContacts:Landroid/util/ArraySet;

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mDirtyRawContacts:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getInsertedRawContactIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mInsertedRawContactsAccounts:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mInsertedRawContactsAccounts:Landroid/util/ArrayMap;

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mInsertedRawContactsAccounts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getMetadataDirtyRawContactIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mMetadataDirtyRawContacts:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mMetadataDirtyRawContacts:Landroid/util/ArraySet;

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mMetadataDirtyRawContacts:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getStaleSearchIndexContactIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mStaleSearchIndexContacts:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mStaleSearchIndexContacts:Landroid/util/ArraySet;

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mStaleSearchIndexContacts:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getStaleSearchIndexRawContactIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mStaleSearchIndexRawContacts:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mStaleSearchIndexRawContacts:Landroid/util/ArraySet;

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mStaleSearchIndexRawContacts:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getUpdatedRawContactIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mUpdatedRawContacts:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mUpdatedRawContacts:Landroid/util/ArraySet;

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mUpdatedRawContacts:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getUpdatedSyncStates()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mUpdatedSyncStates:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mUpdatedSyncStates:Landroid/util/ArrayMap;

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mUpdatedSyncStates:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public invalidateSearchIndexForContact(J)V
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mStaleSearchIndexContacts:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mStaleSearchIndexContacts:Landroid/util/ArraySet;

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mStaleSearchIndexContacts:Landroid/util/ArraySet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 117
    return-void
.end method

.method public invalidateSearchIndexForRawContact(J)V
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mStaleSearchIndexRawContacts:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mStaleSearchIndexRawContacts:Landroid/util/ArraySet;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mStaleSearchIndexRawContacts:Landroid/util/ArraySet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 112
    return-void
.end method

.method public isNewRawContact(J)Z
    .locals 3

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mInsertedRawContactsAccounts:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mInsertedRawContactsAccounts:Landroid/util/ArrayMap;

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mInsertedRawContactsAccounts:Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public markBackupIdChangedRawContact(J)V
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mBackupIdChangedRawContacts:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mBackupIdChangedRawContacts:Landroid/util/ArraySet;

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mBackupIdChangedRawContacts:Landroid/util/ArraySet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 95
    return-void
.end method

.method public markRawContactChangedOrDeletedOrInserted(J)V
    .locals 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mChangedRawContacts:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mChangedRawContacts:Landroid/util/ArraySet;

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mChangedRawContacts:Landroid/util/ArraySet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 102
    return-void
.end method

.method public markRawContactDirtyAndChanged(JZ)V
    .locals 3

    .prologue
    .line 71
    if-nez p3, :cond_1

    .line 72
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mDirtyRawContacts:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mDirtyRawContacts:Landroid/util/ArraySet;

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mDirtyRawContacts:Landroid/util/ArraySet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/contacts/TransactionContext;->markRawContactChangedOrDeletedOrInserted(J)V

    .line 79
    return-void
.end method

.method public markRawContactMetadataDirty(JZ)V
    .locals 3

    .prologue
    .line 82
    if-nez p3, :cond_1

    .line 83
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mMetadataDirtyRawContacts:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mMetadataDirtyRawContacts:Landroid/util/ArraySet;

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mMetadataDirtyRawContacts:Landroid/util/ArraySet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_1
    return-void
.end method

.method public rawContactInserted(JJ)V
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mInsertedRawContactsAccounts:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mInsertedRawContactsAccounts:Landroid/util/ArrayMap;

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mInsertedRawContactsAccounts:Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/contacts/TransactionContext;->markRawContactChangedOrDeletedOrInserted(J)V

    .line 63
    return-void
.end method

.method public rawContactUpdated(J)V
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mUpdatedRawContacts:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mUpdatedRawContacts:Landroid/util/ArraySet;

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mUpdatedRawContacts:Landroid/util/ArraySet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 68
    return-void
.end method

.method public syncStateUpdated(JLjava/lang/Object;)V
    .locals 3

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mUpdatedSyncStates:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mUpdatedSyncStates:Landroid/util/ArrayMap;

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mUpdatedSyncStates:Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    return-void
.end method
