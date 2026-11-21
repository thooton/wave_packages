.class interface abstract Lcom/nuance/flext9_OEM/input/ContactsSyncManager$SQL;
.super Ljava/lang/Object;
.source "ContactsSyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/ContactsSyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "SQL"
.end annotation


# static fields
.field public static final CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS contacts (word VARCHAR(128) PRIMARY KEY,  type INTEGER NOT NULL DEFAULT 0);"

.field public static final DELETE:Ljava/lang/String; = "DELETE FROM contacts WHERE type=?"

.field public static final DELETE_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS contacts"

.field public static final DELETE_WORD:Ljava/lang/String; = "DELETE FROM contacts WHERE word=? AND type!=0"

.field public static final FIND:Ljava/lang/String; = "SELECT COUNT(*)  FROM contacts WHERE word=? AND type=?"

.field public static final INSERT:Ljava/lang/String; = "INSERT INTO contacts (word,type) values (?,?)"

.field public static final TABLE_NAME:Ljava/lang/String; = "contacts"

.field public static final TYPE_AUTO_SUBSTITUTION:I = 0x2

.field public static final TYPE_CONTACTS:I = 0x0

.field public static final TYPE_USER_DICTIONARY:I = 0x1
