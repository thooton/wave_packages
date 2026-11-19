.class public interface abstract Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$PhoneLookupQuery;
.super Ljava/lang/Object;
.source "AbstractContactAggregator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "PhoneLookupQuery"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1199
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 1200
    const-string/jumbo v1, "raw_contacts._id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1201
    const-string/jumbo v1, "contact_id"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 1202
    const-string/jumbo v1, "account_id"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 1199
    sput-object v0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$PhoneLookupQuery;->COLUMNS:[Ljava/lang/String;

    .line 1180
    return-void
.end method
