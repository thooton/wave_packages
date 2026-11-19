.class public interface abstract Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$NameLookupQuery;
.super Ljava/lang/Object;
.source "AbstractContactAggregator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "NameLookupQuery"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 995
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 996
    const-string/jumbo v1, "normalized_name"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 997
    const-string/jumbo v1, "name_type"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 995
    sput-object v0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$NameLookupQuery;->COLUMNS:[Ljava/lang/String;

    .line 988
    return-void
.end method
