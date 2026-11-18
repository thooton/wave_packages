.class Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$DisplayNameCandidate;
.super Ljava/lang/Object;
.source "AbstractContactAggregator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DisplayNameCandidate"
.end annotation


# instance fields
.field displayName:Ljava/lang/String;

.field displayNameSource:I

.field isNameSuperPrimary:Z

.field rawContactId:J

.field writableAccount:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    invoke-virtual {p0}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$DisplayNameCandidate;->clear()V

    .line 261
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 264
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$DisplayNameCandidate;->rawContactId:J

    .line 265
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$DisplayNameCandidate;->displayName:Ljava/lang/String;

    .line 266
    iput v2, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$DisplayNameCandidate;->displayNameSource:I

    .line 267
    iput-boolean v2, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$DisplayNameCandidate;->isNameSuperPrimary:Z

    .line 268
    iput-boolean v2, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$DisplayNameCandidate;->writableAccount:Z

    .line 269
    return-void
.end method
