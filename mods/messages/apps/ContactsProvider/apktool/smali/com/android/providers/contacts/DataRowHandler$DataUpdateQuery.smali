.class public interface abstract Lcom/android/providers/contacts/DataRowHandler$DataUpdateQuery;
.super Ljava/lang/Object;
.source "DataRowHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/DataRowHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DataUpdateQuery"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 71
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "raw_contact_id"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "mimetype"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/providers/contacts/DataRowHandler$DataUpdateQuery;->COLUMNS:[Ljava/lang/String;

    .line 70
    return-void
.end method
