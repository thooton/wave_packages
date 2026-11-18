.class interface abstract Lcom/android/providers/contacts/DataRowHandlerForGroupMembership$RawContactsQuery;
.super Ljava/lang/Object;
.source "DataRowHandlerForGroupMembership.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "RawContactsQuery"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 48
    const-string/jumbo v1, "deleted"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 49
    const-string/jumbo v1, "account_id"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 47
    sput-object v0, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership$RawContactsQuery;->COLUMNS:[Ljava/lang/String;

    .line 44
    return-void
.end method
