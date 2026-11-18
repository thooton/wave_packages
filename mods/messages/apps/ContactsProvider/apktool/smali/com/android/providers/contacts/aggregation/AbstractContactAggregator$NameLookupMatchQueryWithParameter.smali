.class public interface abstract Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$NameLookupMatchQueryWithParameter;
.super Ljava/lang/Object;
.source "AbstractContactAggregator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "NameLookupMatchQueryWithParameter"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1060
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 1061
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1062
    const-string/jumbo v1, "contact_id"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 1063
    const-string/jumbo v1, "account_id"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 1064
    const-string/jumbo v1, "normalized_name"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 1065
    const-string/jumbo v1, "name_type"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 1060
    sput-object v0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$NameLookupMatchQueryWithParameter;->COLUMNS:[Ljava/lang/String;

    .line 1054
    return-void
.end method
