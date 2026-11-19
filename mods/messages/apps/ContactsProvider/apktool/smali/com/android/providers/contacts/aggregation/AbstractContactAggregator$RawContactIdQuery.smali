.class public Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$RawContactIdQuery;
.super Ljava/lang/Object;
.source "AbstractContactAggregator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "RawContactIdQuery"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 891
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "account_id"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$RawContactIdQuery;->COLUMNS:[Ljava/lang/String;

    .line 889
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 889
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
