.class interface abstract Lcom/android/providers/contacts/ContactsProvider2$DataContactsQuery;
.super Ljava/lang/Object;
.source "ContactsProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactsProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "DataContactsQuery"
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 505
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    .line 506
    const-string/jumbo v1, "raw_contacts._id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 507
    const-string/jumbo v1, "accounts.account_type"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 508
    const-string/jumbo v1, "accounts.account_name"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 509
    const-string/jumbo v1, "accounts.data_set"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 510
    const-string/jumbo v1, "data._id"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 511
    const-string/jumbo v1, "contacts._id"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 505
    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2$DataContactsQuery;->PROJECTION:[Ljava/lang/String;

    .line 497
    return-void
.end method
