.class interface abstract Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$AggregateExceptionPrefetchQuery;
.super Ljava/lang/Object;
.source "AbstractContactAggregator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "AggregateExceptionPrefetchQuery"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 945
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 946
    const-string/jumbo v1, "raw_contact_id1"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 947
    const-string/jumbo v1, "raw_contact_id2"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 945
    sput-object v0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$AggregateExceptionPrefetchQuery;->COLUMNS:[Ljava/lang/String;

    .line 942
    return-void
.end method
