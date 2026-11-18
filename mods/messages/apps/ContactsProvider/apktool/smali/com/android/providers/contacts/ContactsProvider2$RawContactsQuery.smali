.class interface abstract Lcom/android/providers/contacts/ContactsProvider2$RawContactsQuery;
.super Ljava/lang/Object;
.source "ContactsProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactsProvider2;
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
    .line 525
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 526
    const-string/jumbo v1, "deleted"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 527
    const-string/jumbo v1, "account_id"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 528
    const-string/jumbo v1, "accounts.account_type"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 529
    const-string/jumbo v1, "accounts.account_name"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 530
    const-string/jumbo v1, "accounts.data_set"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 525
    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2$RawContactsQuery;->COLUMNS:[Ljava/lang/String;

    .line 522
    return-void
.end method
