.class interface abstract Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$AggregateExceptionQuery;
.super Ljava/lang/Object;
.source "AbstractContactAggregator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "AggregateExceptionQuery"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1031
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    .line 1032
    const-string/jumbo v1, "type"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1033
    const-string/jumbo v1, "raw_contact_id1"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 1034
    const-string/jumbo v1, "raw_contacts1.contact_id"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 1035
    const-string/jumbo v1, "raw_contacts1.account_id"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 1036
    const-string/jumbo v1, "raw_contacts1.aggregation_needed"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 1037
    const-string/jumbo v1, "raw_contact_id2"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 1038
    const-string/jumbo v1, "raw_contacts2.contact_id"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 1039
    const-string/jumbo v1, "raw_contacts2.account_id"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 1040
    const-string/jumbo v1, "raw_contacts2.aggregation_needed"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 1031
    sput-object v0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$AggregateExceptionQuery;->COLUMNS:[Ljava/lang/String;

    .line 1024
    return-void
.end method
