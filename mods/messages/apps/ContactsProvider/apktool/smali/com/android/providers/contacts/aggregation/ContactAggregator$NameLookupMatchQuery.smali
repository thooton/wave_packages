.class interface abstract Lcom/android/providers/contacts/aggregation/ContactAggregator$NameLookupMatchQuery;
.super Ljava/lang/Object;
.source "ContactAggregator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/aggregation/ContactAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "NameLookupMatchQuery"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 744
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 745
    const-string/jumbo v1, "contact_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 746
    const-string/jumbo v1, "nameA.normalized_name"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 747
    const-string/jumbo v1, "nameA.name_type"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 748
    const-string/jumbo v1, "nameB.name_type"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 744
    sput-object v0, Lcom/android/providers/contacts/aggregation/ContactAggregator$NameLookupMatchQuery;->COLUMNS:[Ljava/lang/String;

    .line 731
    return-void
.end method
