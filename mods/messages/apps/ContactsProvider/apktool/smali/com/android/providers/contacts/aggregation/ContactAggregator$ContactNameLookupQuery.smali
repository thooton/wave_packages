.class interface abstract Lcom/android/providers/contacts/aggregation/ContactAggregator$ContactNameLookupQuery;
.super Ljava/lang/Object;
.source "ContactAggregator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/aggregation/ContactAggregator;
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
    .line 849
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 850
    const-string/jumbo v1, "contact_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 851
    const-string/jumbo v1, "normalized_name"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 852
    const-string/jumbo v1, "name_type"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 849
    sput-object v0, Lcom/android/providers/contacts/aggregation/ContactAggregator$ContactNameLookupQuery;->COLUMNS:[Ljava/lang/String;

    .line 846
    return-void
.end method
