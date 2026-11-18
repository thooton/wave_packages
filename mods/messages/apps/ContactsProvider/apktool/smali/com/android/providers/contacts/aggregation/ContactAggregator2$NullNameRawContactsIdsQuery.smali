.class public interface abstract Lcom/android/providers/contacts/aggregation/ContactAggregator2$NullNameRawContactsIdsQuery;
.super Ljava/lang/Object;
.source "ContactAggregator2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/aggregation/ContactAggregator2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "NullNameRawContactsIdsQuery"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1048
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 1049
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "contact_id"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "account_id"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 1050
    const-string/jumbo v1, "normalized_name"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 1048
    sput-object v0, Lcom/android/providers/contacts/aggregation/ContactAggregator2$NullNameRawContactsIdsQuery;->COLUMNS:[Ljava/lang/String;

    .line 1043
    return-void
.end method
