.class interface abstract Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$PhotoFileQuery;
.super Ljava/lang/Object;
.source "AbstractContactAggregator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "PhotoFileQuery"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1684
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 1685
    const-string/jumbo v1, "height"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1686
    const-string/jumbo v1, "width"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 1687
    const-string/jumbo v1, "filesize"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 1684
    sput-object v0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$PhotoFileQuery;->COLUMNS:[Ljava/lang/String;

    .line 1683
    return-void
.end method
