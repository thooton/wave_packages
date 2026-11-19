.class interface abstract Lcom/android/providers/contacts/aggregation/ContactAggregator$AggregateExceptionQuery;
.super Ljava/lang/Object;
.source "ContactAggregator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/aggregation/ContactAggregator;
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
    .line 529
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    .line 530
    const-string/jumbo v1, "type"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 531
    const-string/jumbo v1, "raw_contact_id1"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 532
    const-string/jumbo v1, "raw_contacts1.contact_id"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 533
    const-string/jumbo v1, "raw_contacts1.aggregation_needed"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 534
    const-string/jumbo v1, "raw_contacts2.contact_id"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 535
    const-string/jumbo v1, "raw_contacts2.aggregation_needed"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 529
    sput-object v0, Lcom/android/providers/contacts/aggregation/ContactAggregator$AggregateExceptionQuery;->COLUMNS:[Ljava/lang/String;

    .line 522
    return-void
.end method
