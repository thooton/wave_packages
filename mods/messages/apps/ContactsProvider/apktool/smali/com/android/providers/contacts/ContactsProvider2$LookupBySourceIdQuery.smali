.class interface abstract Lcom/android/providers/contacts/ContactsProvider2$LookupBySourceIdQuery;
.super Ljava/lang/Object;
.source "ContactsProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactsProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "LookupBySourceIdQuery"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 7873
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 7874
    const-string/jumbo v1, "contact_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 7875
    const-string/jumbo v1, "account_type_and_data_set"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 7876
    const-string/jumbo v1, "account_name"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 7877
    const-string/jumbo v1, "sourceid"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 7873
    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2$LookupBySourceIdQuery;->COLUMNS:[Ljava/lang/String;

    .line 7871
    return-void
.end method
