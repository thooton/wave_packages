.class public interface abstract Lcom/android/providers/contacts/DataRowHandler$DataDeleteQuery;
.super Ljava/lang/Object;
.source "DataRowHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/DataRowHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DataDeleteQuery"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String;

.field public static final CONCRETE_COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 48
    const-string/jumbo v1, "data._id"

    aput-object v1, v0, v2

    .line 49
    const-string/jumbo v1, "mimetype"

    aput-object v1, v0, v3

    .line 50
    const-string/jumbo v1, "raw_contact_id"

    aput-object v1, v0, v4

    .line 51
    const-string/jumbo v1, "is_primary"

    aput-object v1, v0, v5

    .line 52
    const-string/jumbo v1, "data1"

    aput-object v1, v0, v6

    .line 47
    sput-object v0, Lcom/android/providers/contacts/DataRowHandler$DataDeleteQuery;->CONCRETE_COLUMNS:[Ljava/lang/String;

    .line 55
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 56
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    .line 57
    const-string/jumbo v1, "mimetype"

    aput-object v1, v0, v3

    .line 58
    const-string/jumbo v1, "raw_contact_id"

    aput-object v1, v0, v4

    .line 59
    const-string/jumbo v1, "is_primary"

    aput-object v1, v0, v5

    .line 60
    const-string/jumbo v1, "data1"

    aput-object v1, v0, v6

    .line 55
    sput-object v0, Lcom/android/providers/contacts/DataRowHandler$DataDeleteQuery;->COLUMNS:[Ljava/lang/String;

    .line 44
    return-void
.end method
