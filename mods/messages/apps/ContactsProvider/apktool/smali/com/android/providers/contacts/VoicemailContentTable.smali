.class public Lcom/android/providers/contacts/VoicemailContentTable;
.super Ljava/lang/Object;
.source "VoicemailContentTable.java"

# interfaces
.implements Lcom/android/providers/contacts/VoicemailTable$Delegate;


# static fields
.field private static final ALLOWED_COLUMNS:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FILENAME_ONLY_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mCallLogInsertionHelper:Lcom/android/providers/contacts/CallLogInsertionHelper;

.field private final mContext:Landroid/content/Context;

.field private final mDbHelper:Lcom/android/providers/contacts/CallLogDatabaseHelper;

.field private final mDelegateHelper:Lcom/android/providers/contacts/VoicemailTable$DelegateHelper;

.field private final mTableName:Ljava/lang/String;

.field private final mVoicemailProjectionMap:Lcom/android/common/content/ProjectionMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 58
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_data"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/providers/contacts/VoicemailContentTable;->FILENAME_ONLY_PROJECTION:[Ljava/lang/String;

    .line 60
    new-instance v0, Lcom/google/common/collect/ImmutableSet$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableSet$Builder;-><init>()V

    .line 61
    const-string/jumbo v1, "_id"

    .line 60
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    .line 62
    const-string/jumbo v1, "number"

    .line 60
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    .line 63
    const-string/jumbo v1, "date"

    .line 60
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    .line 64
    const-string/jumbo v1, "duration"

    .line 60
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    .line 65
    const-string/jumbo v1, "is_read"

    .line 60
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    .line 66
    const-string/jumbo v1, "transcription"

    .line 60
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    .line 67
    const-string/jumbo v1, "transcription_state"

    .line 60
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    .line 68
    const-string/jumbo v1, "state"

    .line 60
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    .line 69
    const-string/jumbo v1, "source_data"

    .line 60
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    .line 70
    const-string/jumbo v1, "source_package"

    .line 60
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    .line 71
    const-string/jumbo v1, "has_content"

    .line 60
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    .line 72
    const-string/jumbo v1, "subscription_component_name"

    .line 60
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    .line 73
    const-string/jumbo v1, "subscription_id"

    .line 60
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    .line 74
    const-string/jumbo v1, "mime_type"

    .line 60
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    .line 75
    const-string/jumbo v1, "dirty"

    .line 60
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    .line 76
    const-string/jumbo v1, "deleted"

    .line 60
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    .line 77
    const-string/jumbo v1, "last_modified"

    .line 60
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    .line 78
    const-string/jumbo v1, "backed_up"

    .line 60
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    .line 79
    const-string/jumbo v1, "restored"

    .line 60
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    .line 80
    const-string/jumbo v1, "archived"

    .line 60
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    .line 81
    const-string/jumbo v1, "is_omtp_voicemail"

    .line 60
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    .line 82
    const-string/jumbo v1, "_display_name"

    .line 60
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    .line 83
    const-string/jumbo v1, "_size"

    .line 60
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/VoicemailContentTable;->ALLOWED_COLUMNS:Lcom/google/common/collect/ImmutableSet;

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/providers/contacts/CallLogDatabaseHelper;Lcom/android/providers/contacts/VoicemailTable$DelegateHelper;Lcom/android/providers/contacts/CallLogInsertionHelper;)V
    .locals 3

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/android/providers/contacts/VoicemailContentTable;->mTableName:Ljava/lang/String;

    .line 96
    iput-object p2, p0, Lcom/android/providers/contacts/VoicemailContentTable;->mContext:Landroid/content/Context;

    .line 97
    iput-object p3, p0, Lcom/android/providers/contacts/VoicemailContentTable;->mDbHelper:Lcom/android/providers/contacts/CallLogDatabaseHelper;

    .line 98
    iput-object p4, p0, Lcom/android/providers/contacts/VoicemailContentTable;->mDelegateHelper:Lcom/android/providers/contacts/VoicemailTable$DelegateHelper;

    .line 99
    new-instance v0, Lcom/android/common/content/ProjectionMap$Builder;

    invoke-direct {v0}, Lcom/android/common/content/ProjectionMap$Builder;-><init>()V

    .line 100
    const-string/jumbo v1, "_id"

    .line 99
    invoke-virtual {v0, v1}, Lcom/android/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v0

    .line 101
    const-string/jumbo v1, "number"

    .line 99
    invoke-virtual {v0, v1}, Lcom/android/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v0

    .line 102
    const-string/jumbo v1, "date"

    .line 99
    invoke-virtual {v0, v1}, Lcom/android/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v0

    .line 103
    const-string/jumbo v1, "duration"

    .line 99
    invoke-virtual {v0, v1}, Lcom/android/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v0

    .line 104
    const-string/jumbo v1, "is_read"

    .line 99
    invoke-virtual {v0, v1}, Lcom/android/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v0

    .line 105
    const-string/jumbo v1, "transcription"

    .line 99
    invoke-virtual {v0, v1}, Lcom/android/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v0

    .line 106
    const-string/jumbo v1, "transcription_state"

    .line 99
    invoke-virtual {v0, v1}, Lcom/android/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v0

    .line 107
    const-string/jumbo v1, "state"

    .line 99
    invoke-virtual {v0, v1}, Lcom/android/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v0

    .line 108
    const-string/jumbo v1, "source_data"

    .line 99
    invoke-virtual {v0, v1}, Lcom/android/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v0

    .line 109
    const-string/jumbo v1, "source_package"

    .line 99
    invoke-virtual {v0, v1}, Lcom/android/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v0

    .line 110
    const-string/jumbo v1, "has_content"

    .line 99
    invoke-virtual {v0, v1}, Lcom/android/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v0

    .line 111
    const-string/jumbo v1, "mime_type"

    .line 99
    invoke-virtual {v0, v1}, Lcom/android/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v0

    .line 112
    const-string/jumbo v1, "_data"

    .line 99
    invoke-virtual {v0, v1}, Lcom/android/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v0

    .line 113
    const-string/jumbo v1, "subscription_component_name"

    .line 99
    invoke-virtual {v0, v1}, Lcom/android/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v0

    .line 114
    const-string/jumbo v1, "subscription_id"

    .line 99
    invoke-virtual {v0, v1}, Lcom/android/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v0

    .line 115
    const-string/jumbo v1, "dirty"

    .line 99
    invoke-virtual {v0, v1}, Lcom/android/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v0

    .line 116
    const-string/jumbo v1, "deleted"

    .line 99
    invoke-virtual {v0, v1}, Lcom/android/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v0

    .line 117
    const-string/jumbo v1, "last_modified"

    .line 99
    invoke-virtual {v0, v1}, Lcom/android/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v0

    .line 118
    const-string/jumbo v1, "backed_up"

    .line 99
    invoke-virtual {v0, v1}, Lcom/android/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v0

    .line 119
    const-string/jumbo v1, "restored"

    .line 99
    invoke-virtual {v0, v1}, Lcom/android/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v0

    .line 120
    const-string/jumbo v1, "archived"

    .line 99
    invoke-virtual {v0, v1}, Lcom/android/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v0

    .line 121
    const-string/jumbo v1, "is_omtp_voicemail"

    .line 99
    invoke-virtual {v0, v1}, Lcom/android/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v0

    .line 122
    const-string/jumbo v1, "_display_name"

    invoke-static {p2}, Lcom/android/providers/contacts/VoicemailContentTable;->createDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 99
    invoke-virtual {v0, v1, v2}, Lcom/android/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v0

    .line 123
    const-string/jumbo v1, "_size"

    const-string/jumbo v2, "NULL"

    .line 99
    invoke-virtual {v0, v1, v2}, Lcom/android/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/content/ProjectionMap$Builder;->build()Lcom/android/common/content/ProjectionMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/VoicemailContentTable;->mVoicemailProjectionMap:Lcom/android/common/content/ProjectionMap;

    .line 125
    iput-object p5, p0, Lcom/android/providers/contacts/VoicemailContentTable;->mCallLogInsertionHelper:Lcom/android/providers/contacts/CallLogInsertionHelper;

    .line 126
    return-void
.end method

.method private checkInsertSupported(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;)V
    .locals 5

    .prologue
    .line 174
    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 176
    const-string/jumbo v1, "Cannot insert URI: %s. Inserted URIs should not contain an id."

    .line 175
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 177
    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 175
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_0
    return-void
.end method

.method private checkUpdateSupported(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;)V
    .locals 5

    .prologue
    .line 270
    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->hasId()Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 272
    const-string/jumbo v1, "Cannot update URI: %s.  Bulk update not supported"

    .line 271
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 272
    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 271
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_0
    return-void
.end method

.method private static createDisplayName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 135
    const v0, 0x7f040009

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " || "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "number"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private generateDataFile()Ljava/lang/String;
    .locals 3

    .prologue
    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailContentTable;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "voicemail-data"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 185
    const-string/jumbo v1, "voicemail"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 187
    :catch_0
    move-exception v0

    .line 189
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "unable to create temp file"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getCallTypeClause()Ljava/lang/String;
    .locals 4

    .prologue
    .line 298
    const-string/jumbo v0, "type"

    const-wide/16 v2, 0x4

    invoke-static {v0, v2, v3}, Lcom/android/providers/contacts/util/DbQueryUtils;->getEqualityClause(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDatabaseModifier(Landroid/database/sqlite/SQLiteDatabase;)Lcom/android/providers/contacts/DatabaseModifier;
    .locals 3

    .prologue
    .line 302
    new-instance v0, Lcom/android/providers/contacts/DbModifierWithNotification;

    iget-object v1, p0, Lcom/android/providers/contacts/VoicemailContentTable;->mTableName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/providers/contacts/VoicemailContentTable;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/android/providers/contacts/DbModifierWithNotification;-><init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V

    return-object v0
.end method

.method private updateVoicemailUri(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;)V
    .locals 4

    .prologue
    .line 193
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 194
    const-string/jumbo v1, "voicemail_uri"

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v1, p0, Lcom/android/providers/contacts/VoicemailContentTable;->mTableName:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->createUriData(Landroid/net/Uri;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getWhereClause()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 199
    return-void
.end method


# virtual methods
.method public delete(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 203
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailContentTable;->mDbHelper:Lcom/android/providers/contacts/CallLogDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/CallLogDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 204
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    aput-object p2, v0, v1

    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getWhereClause()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 205
    invoke-direct {p0}, Lcom/android/providers/contacts/VoicemailContentTable;->getCallTypeClause()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 204
    invoke-static {v0}, Lcom/android/providers/contacts/util/DbQueryUtils;->concatenateClauses([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 211
    :try_start_0
    sget-object v2, Lcom/android/providers/contacts/VoicemailContentTable;->FILENAME_ONLY_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/VoicemailContentTable;->query(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 212
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 213
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 214
    if-nez v0, :cond_1

    .line 215
    const-string/jumbo v0, "VmContentProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No filename for uri "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", cannot delete file"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 226
    :catchall_0
    move-exception v0

    .line 227
    :goto_1
    invoke-static {v1}, Lcom/android/providers/contacts/util/CloseUtils;->closeQuietly(Landroid/database/Cursor;)V

    .line 226
    throw v0

    .line 218
    :cond_1
    :try_start_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    .line 221
    if-nez v0, :cond_0

    .line 222
    const-string/jumbo v0, "VmContentProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to delete file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 227
    :cond_2
    invoke-static {v1}, Lcom/android/providers/contacts/util/CloseUtils;->closeQuietly(Landroid/database/Cursor;)V

    .line 231
    invoke-direct {p0, v7}, Lcom/android/providers/contacts/VoicemailContentTable;->getDatabaseModifier(Landroid/database/sqlite/SQLiteDatabase;)Lcom/android/providers/contacts/DatabaseModifier;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/VoicemailContentTable;->mTableName:Ljava/lang/String;

    invoke-interface {v0, v1, v8, p3}, Lcom/android/providers/contacts/DatabaseModifier;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0

    .line 226
    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_1
.end method

.method public getSourcePackages()Landroid/util/ArraySet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailContentTable;->mDbHelper:Lcom/android/providers/contacts/CallLogDatabaseHelper;

    iget-object v1, p0, Lcom/android/providers/contacts/VoicemailContentTable;->mTableName:Ljava/lang/String;

    const-string/jumbo v2, "source_package"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/CallLogDatabaseHelper;->selectDistinctColumn(Ljava/lang/String;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    return-object v0
.end method

.method public getType(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    const-string/jumbo v0, "vnd.android.cursor.item/voicemail"

    return-object v0

    .line 281
    :cond_0
    const-string/jumbo v0, "vnd.android.cursor.dir/voicemails"

    return-object v0
.end method

.method public insert(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 141
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailContentTable;->mVoicemailProjectionMap:Lcom/android/common/content/ProjectionMap;

    invoke-static {v0, p2}, Lcom/android/providers/contacts/util/DbQueryUtils;->checkForSupportedColumns(Ljava/util/Map;Landroid/content/ContentValues;)V

    .line 142
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 143
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/VoicemailContentTable;->checkInsertSupported(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;)V

    .line 144
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailContentTable;->mDelegateHelper:Lcom/android/providers/contacts/VoicemailTable$DelegateHelper;

    invoke-interface {v0, p1, v1}, Lcom/android/providers/contacts/VoicemailTable$DelegateHelper;->checkAndAddSourcePackageIntoValues(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Landroid/content/ContentValues;)V

    .line 147
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailContentTable;->mCallLogInsertionHelper:Lcom/android/providers/contacts/CallLogInsertionHelper;

    invoke-interface {v0, v1}, Lcom/android/providers/contacts/CallLogInsertionHelper;->addComputedValues(Landroid/content/ContentValues;)V

    .line 151
    const-string/jumbo v0, "_data"

    invoke-direct {p0}, Lcom/android/providers/contacts/VoicemailContentTable;->generateDataFile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string/jumbo v0, "type"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 156
    const-string/jumbo v0, "is_read"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    const-string/jumbo v0, "is_read"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 158
    :goto_0
    const-string/jumbo v2, "new"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 159
    const-string/jumbo v2, "new"

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailContentTable;->mDbHelper:Lcom/android/providers/contacts/CallLogDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/CallLogDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 163
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/VoicemailContentTable;->getDatabaseModifier(Landroid/database/sqlite/SQLiteDatabase;)Lcom/android/providers/contacts/DatabaseModifier;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/contacts/VoicemailContentTable;->mTableName:Ljava/lang/String;

    invoke-interface {v2, v3, v6, v1}, Lcom/android/providers/contacts/DatabaseModifier;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 164
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 165
    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 167
    invoke-direct {p0, v0, v1}, Lcom/android/providers/contacts/VoicemailContentTable;->updateVoicemailUri(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;)V

    .line 168
    return-object v1

    .line 157
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 170
    :cond_2
    return-object v6
.end method

.method public openFile(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailContentTable;->mDelegateHelper:Lcom/android/providers/contacts/VoicemailTable$DelegateHelper;

    invoke-interface {v0, p1, p2}, Lcom/android/providers/contacts/VoicemailTable$DelegateHelper;->openDataFile(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public query(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 238
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 239
    iget-object v1, p0, Lcom/android/providers/contacts/VoicemailContentTable;->mTableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 240
    iget-object v1, p0, Lcom/android/providers/contacts/VoicemailContentTable;->mVoicemailProjectionMap:Lcom/android/common/content/ProjectionMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 241
    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setStrict(Z)V

    .line 243
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getWhereClause()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 244
    invoke-direct {p0}, Lcom/android/providers/contacts/VoicemailContentTable;->getCallTypeClause()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 243
    invoke-static {v1}, Lcom/android/providers/contacts/util/DbQueryUtils;->concatenateClauses([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 245
    iget-object v1, p0, Lcom/android/providers/contacts/VoicemailContentTable;->mDbHelper:Lcom/android/providers/contacts/CallLogDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/CallLogDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    move-object v2, p2

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    .line 246
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 247
    if-eqz v0, :cond_0

    .line 248
    iget-object v1, p0, Lcom/android/providers/contacts/VoicemailContentTable;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/VoicemailContract$Voicemails;->CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 250
    :cond_0
    return-object v0
.end method

.method public update(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6

    .prologue
    .line 257
    sget-object v0, Lcom/android/providers/contacts/VoicemailContentTable;->ALLOWED_COLUMNS:Lcom/google/common/collect/ImmutableSet;

    const-string/jumbo v1, "Updates are not allowed."

    invoke-static {v0, p2, v1}, Lcom/android/providers/contacts/util/DbQueryUtils;->checkForSupportedColumns(Ljava/util/Set;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 258
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/VoicemailContentTable;->checkUpdateSupported(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;)V

    .line 260
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailContentTable;->mDbHelper:Lcom/android/providers/contacts/CallLogDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/CallLogDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 263
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getWhereClause()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 264
    invoke-direct {p0}, Lcom/android/providers/contacts/VoicemailContentTable;->getCallTypeClause()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 263
    invoke-static {v1}, Lcom/android/providers/contacts/util/DbQueryUtils;->concatenateClauses([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 265
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/VoicemailContentTable;->getDatabaseModifier(Landroid/database/sqlite/SQLiteDatabase;)Lcom/android/providers/contacts/DatabaseModifier;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/contacts/VoicemailContentTable;->mTableName:Ljava/lang/String;

    move-object v3, p2

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/providers/contacts/DatabaseModifier;->update(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
