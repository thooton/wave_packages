.class interface abstract Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$PhotoIdQuery;
.super Ljava/lang/Object;
.source "AbstractContactAggregator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "PhotoIdQuery"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1602
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 1603
    const-string/jumbo v1, "accounts.account_type"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1604
    const-string/jumbo v1, "data._id"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 1605
    const-string/jumbo v1, "is_super_primary"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 1606
    const-string/jumbo v1, "data14"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 1602
    sput-object v0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$PhotoIdQuery;->COLUMNS:[Ljava/lang/String;

    .line 1601
    return-void
.end method
