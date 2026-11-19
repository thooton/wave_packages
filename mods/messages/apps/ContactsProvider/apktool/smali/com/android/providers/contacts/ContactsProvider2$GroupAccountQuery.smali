.class interface abstract Lcom/android/providers/contacts/ContactsProvider2$GroupAccountQuery;
.super Ljava/lang/Object;
.source "ContactsProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactsProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "GroupAccountQuery"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 4439
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 4440
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 4441
    const-string/jumbo v1, "account_type"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 4442
    const-string/jumbo v1, "account_name"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 4443
    const-string/jumbo v1, "data_set"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 4439
    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2$GroupAccountQuery;->COLUMNS:[Ljava/lang/String;

    .line 4437
    return-void
.end method
