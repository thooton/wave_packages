.class interface abstract Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$ContactIdQuery;
.super Ljava/lang/Object;
.source "AbstractContactAggregator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "ContactIdQuery"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1978
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 1979
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1978
    sput-object v0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$ContactIdQuery;->COLUMNS:[Ljava/lang/String;

    .line 1977
    return-void
.end method
