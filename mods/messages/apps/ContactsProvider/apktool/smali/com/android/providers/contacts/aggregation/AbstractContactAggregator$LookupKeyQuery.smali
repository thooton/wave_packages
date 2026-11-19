.class interface abstract Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$LookupKeyQuery;
.super Ljava/lang/Object;
.source "AbstractContactAggregator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "LookupKeyQuery"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1852
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 1853
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1854
    const-string/jumbo v1, "display_name"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 1855
    const-string/jumbo v1, "account_type_and_data_set"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 1856
    const-string/jumbo v1, "account_name"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 1857
    const-string/jumbo v1, "sourceid"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 1852
    sput-object v0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$LookupKeyQuery;->COLUMNS:[Ljava/lang/String;

    .line 1850
    return-void
.end method
