.class interface abstract Lcom/android/providers/contacts/aggregation/ContactAggregator$IdentityLookupMatchQuery;
.super Ljava/lang/Object;
.source "ContactAggregator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/aggregation/ContactAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "IdentityLookupMatchQuery"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 703
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 704
    const-string/jumbo v1, "contact_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 703
    sput-object v0, Lcom/android/providers/contacts/aggregation/ContactAggregator$IdentityLookupMatchQuery;->COLUMNS:[Ljava/lang/String;

    .line 686
    return-void
.end method
