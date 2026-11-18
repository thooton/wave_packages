.class interface abstract Lcom/android/providers/contacts/aggregation/ContactAggregator2$ContactNameLookupQuery;
.super Ljava/lang/Object;
.source "ContactAggregator2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/aggregation/ContactAggregator2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "ContactNameLookupQuery"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 719
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 720
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 721
    const-string/jumbo v1, "contact_id"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 722
    const-string/jumbo v1, "account_id"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 723
    const-string/jumbo v1, "normalized_name"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 724
    const-string/jumbo v1, "name_type"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 719
    sput-object v0, Lcom/android/providers/contacts/aggregation/ContactAggregator2$ContactNameLookupQuery;->COLUMNS:[Ljava/lang/String;

    .line 716
    return-void
.end method
