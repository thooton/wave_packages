.class public interface abstract Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$EmailLookupQuery;
.super Ljava/lang/Object;
.source "AbstractContactAggregator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "EmailLookupQuery"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1169
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 1170
    const-string/jumbo v1, "raw_contacts._id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1171
    const-string/jumbo v1, "contact_id"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 1172
    const-string/jumbo v1, "account_id"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 1169
    sput-object v0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$EmailLookupQuery;->COLUMNS:[Ljava/lang/String;

    .line 1154
    return-void
.end method
