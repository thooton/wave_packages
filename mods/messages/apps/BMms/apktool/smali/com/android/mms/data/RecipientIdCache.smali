.class public Lcom/android/mms/data/RecipientIdCache;
.super Ljava/lang/Object;
.source "RecipientIdCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/data/RecipientIdCache$Entry;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static sAllCanonical:Landroid/net/Uri;

.field private static sInstance:Lcom/android/mms/data/RecipientIdCache;

.field private static sSingleCanonicalAddressUri:Landroid/net/Uri;


# instance fields
.field private final mCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string/jumbo v0, "content://mms-sms/canonical-addresses"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 29
    sput-object v0, Lcom/android/mms/data/RecipientIdCache;->sAllCanonical:Landroid/net/Uri;

    .line 33
    const-string/jumbo v0, "content://mms-sms/canonical-address"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 32
    sput-object v0, Lcom/android/mms/data/RecipientIdCache;->sSingleCanonicalAddressUri:Landroid/net/Uri;

    .line 25
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/data/RecipientIdCache;->mCache:Ljava/util/Map;

    .line 64
    iput-object p1, p0, Lcom/android/mms/data/RecipientIdCache;->mContext:Landroid/content/Context;

    .line 65
    return-void
.end method

.method public static canonicalTableDump()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 215
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "**** Dump of canoncial_addresses table ****"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    sget-object v0, Lcom/android/mms/data/RecipientIdCache;->sInstance:Lcom/android/mms/data/RecipientIdCache;

    iget-object v0, v0, Lcom/android/mms/data/RecipientIdCache;->mContext:Landroid/content/Context;

    .line 217
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 218
    sget-object v2, Lcom/android/mms/data/RecipientIdCache;->sAllCanonical:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    .line 217
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 219
    if-nez v1, :cond_0

    .line 220
    const-string/jumbo v0, "Mms"

    const-string/jumbo v2, "null Cursor in content://mms-sms/canonical-addresses"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 226
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 227
    const-string/jumbo v4, "Mms"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 229
    :catchall_0
    move-exception v0

    .line 230
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 229
    throw v0

    .line 230
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 232
    return-void
.end method

.method public static dump()V
    .locals 6

    .prologue
    .line 206
    sget-object v1, Lcom/android/mms/data/RecipientIdCache;->sInstance:Lcom/android/mms/data/RecipientIdCache;

    monitor-enter v1

    .line 207
    :try_start_0
    const-string/jumbo v0, "Mms"

    const-string/jumbo v2, "*** Recipient ID cache dump ***"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    sget-object v0, Lcom/android/mms/data/RecipientIdCache;->sInstance:Lcom/android/mms/data/RecipientIdCache;

    iget-object v0, v0, Lcom/android/mms/data/RecipientIdCache;->mCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 209
    const-string/jumbo v3, "Mms"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/mms/data/RecipientIdCache;->sInstance:Lcom/android/mms/data/RecipientIdCache;

    iget-object v5, v5, Lcom/android/mms/data/RecipientIdCache;->mCache:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    monitor-exit v1

    .line 212
    return-void
.end method

.method public static fill()V
    .locals 3
    # PERF(recipient cache): parse the warmup cursor outside the cache lock.
    sget-object v0, Lcom/android/mms/data/RecipientIdCache;->sInstance:Lcom/android/mms/data/RecipientIdCache;

    iget-object v1, v0, Lcom/android/mms/data/RecipientIdCache;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/android/mms/data/RecipientIdCache;->mCache:Ljava/util/Map;

    invoke-static {v1, v0, v2}, Lcom/android/mms/data/ArgonRecipientCache;->warm(Landroid/content/Context;Ljava/lang/Object;Ljava/util/Map;)V

    return-void
.end method

.method public static getAddresses(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    # PERF(recipient cache): fetch just the missing IDs with one indexed provider query.
    sget-object v0, Lcom/android/mms/data/RecipientIdCache;->sInstance:Lcom/android/mms/data/RecipientIdCache;

    iget-object v1, v0, Lcom/android/mms/data/RecipientIdCache;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/android/mms/data/RecipientIdCache;->mCache:Ljava/util/Map;

    invoke-static {v1, v0, v2, p0}, Lcom/android/mms/data/ArgonRecipientCache;->getAddresses(Landroid/content/Context;Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getSingleAddressFromCanonicalAddressInDb(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 243
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 244
    sget-object v0, Lcom/android/mms/data/RecipientIdCache;->sSingleCanonicalAddressUri:Landroid/net/Uri;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    .line 243
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 246
    if-nez v1, :cond_0

    .line 247
    const-string/jumbo v0, "Mms"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "null Cursor looking up recipient: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    return-object v3

    .line 251
    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 256
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 253
    return-object v0

    .line 256
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 258
    return-object v3

    .line 255
    :catchall_0
    move-exception v0

    .line 256
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 255
    throw v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 54
    new-instance v0, Lcom/android/mms/data/RecipientIdCache;

    invoke-direct {v0, p0}, Lcom/android/mms/data/RecipientIdCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/data/RecipientIdCache;->sInstance:Lcom/android/mms/data/RecipientIdCache;

    .line 55
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/data/RecipientIdCache$1;

    invoke-direct {v1}, Lcom/android/mms/data/RecipientIdCache$1;-><init>()V

    .line 59
    const-string/jumbo v2, "RecipientIdCache.init"

    .line 55
    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 60
    return-void
.end method

.method private updateCanonicalAddressInDb(JLjava/lang/String;)V
    .locals 7

    .prologue
    .line 181
    const-string/jumbo v0, "Mms"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    const-string/jumbo v0, "Mms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[RecipientIdCache] updateCanonicalAddressInDb: id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 183
    const-string/jumbo v2, ", number="

    .line 182
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_0
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 187
    const-string/jumbo v0, "address"

    invoke-virtual {v5, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "_id"

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    const/16 v0, 0x3d

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 192
    sget-object v0, Lcom/android/mms/data/RecipientIdCache;->sSingleCanonicalAddressUri:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 193
    iget-object v0, p0, Lcom/android/mms/data/RecipientIdCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 197
    new-instance v0, Lcom/android/mms/data/RecipientIdCache$2;

    const-string/jumbo v2, "updateCanonicalAddressInDb"

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/data/RecipientIdCache$2;-><init>(Lcom/android/mms/data/RecipientIdCache;Ljava/lang/String;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Lcom/android/mms/data/RecipientIdCache$2;->start()V

    .line 202
    return-void
.end method

.method public static updateNumbers(JLcom/android/mms/data/ContactList;)V
    .locals 11

    .prologue
    .line 141
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 142
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->isNumberModified()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/Contact;->setIsNumberModified(Z)V

    .line 149
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getRecipientId()J

    move-result-wide v4

    .line 150
    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_0

    .line 154
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v6

    .line 155
    const/4 v2, 0x0

    .line 156
    sget-object v7, Lcom/android/mms/data/RecipientIdCache;->sInstance:Lcom/android/mms/data/RecipientIdCache;

    monitor-enter v7

    .line 157
    :try_start_0
    sget-object v1, Lcom/android/mms/data/RecipientIdCache;->sInstance:Lcom/android/mms/data/RecipientIdCache;

    iget-object v1, v1, Lcom/android/mms/data/RecipientIdCache;->mCache:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 159
    const-string/jumbo v8, "Mms"

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 160
    const-string/jumbo v8, "Mms"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[RecipientIdCache] updateNumbers: contact="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 161
    const-string/jumbo v9, ", wasModified=true, recipientId="

    .line 160
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const-string/jumbo v0, "Mms"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "   contact.getNumber="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 163
    const-string/jumbo v9, ", sInstance.mCache.get(recipientId)="

    .line 162
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_1
    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 169
    sget-object v0, Lcom/android/mms/data/RecipientIdCache;->sInstance:Lcom/android/mms/data/RecipientIdCache;

    iget-object v0, v0, Lcom/android/mms/data/RecipientIdCache;->mCache:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    const/4 v0, 0x1

    :goto_1
    monitor-exit v7

    .line 173
    if-eqz v0, :cond_0

    .line 175
    sget-object v0, Lcom/android/mms/data/RecipientIdCache;->sInstance:Lcom/android/mms/data/RecipientIdCache;

    invoke-direct {v0, v4, v5, v6}, Lcom/android/mms/data/RecipientIdCache;->updateCanonicalAddressInDb(JLjava/lang/String;)V

    goto/16 :goto_0

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    .line 178
    :cond_2
    return-void

    :cond_3
    move v0, v2

    goto :goto_1
.end method
