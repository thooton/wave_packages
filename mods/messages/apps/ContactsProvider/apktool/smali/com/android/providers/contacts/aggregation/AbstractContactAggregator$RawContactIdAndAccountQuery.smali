.class final Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$RawContactIdAndAccountQuery;
.super Ljava/lang/Object;
.source "AbstractContactAggregator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RawContactIdAndAccountQuery"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 660
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 661
    const-string/jumbo v1, "contact_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 662
    const-string/jumbo v1, "account_id"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 660
    sput-object v0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$RawContactIdAndAccountQuery;->COLUMNS:[Ljava/lang/String;

    .line 657
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 657
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
