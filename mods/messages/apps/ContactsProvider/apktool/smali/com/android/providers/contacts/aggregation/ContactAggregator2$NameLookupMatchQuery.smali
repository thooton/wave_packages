.class public interface abstract Lcom/android/providers/contacts/aggregation/ContactAggregator2$NameLookupMatchQuery;
.super Ljava/lang/Object;
.source "ContactAggregator2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/aggregation/ContactAggregator2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "NameLookupMatchQuery"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 972
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    .line 973
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 974
    const-string/jumbo v1, "contact_id"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 975
    const-string/jumbo v1, "account_id"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 976
    const-string/jumbo v1, "nameA.normalized_name"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 977
    const-string/jumbo v1, "nameA.name_type"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 978
    const-string/jumbo v1, "nameB.name_type"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 972
    sput-object v0, Lcom/android/providers/contacts/aggregation/ContactAggregator2$NameLookupMatchQuery;->COLUMNS:[Ljava/lang/String;

    .line 960
    return-void
.end method
