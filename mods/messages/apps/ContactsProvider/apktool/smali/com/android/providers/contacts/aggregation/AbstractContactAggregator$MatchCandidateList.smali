.class public Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;
.super Ljava/lang/Object;
.source "AbstractContactAggregator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "MatchCandidateList"
.end annotation


# instance fields
.field protected mCount:I

.field protected final mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$NameMatchCandidate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;->mList:Ljava/util/ArrayList;

    .line 221
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 229
    iget v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;->mCount:I

    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;->mList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$NameMatchCandidate;

    invoke-direct {v1, p1, p2}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$NameMatchCandidate;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    :goto_0
    iget v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;->mCount:I

    .line 237
    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;->mList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;->mCount:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$NameMatchCandidate;

    .line 233
    iput-object p1, v0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$NameMatchCandidate;->mName:Ljava/lang/String;

    .line 234
    iput p2, v0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$NameMatchCandidate;->mLookupType:I

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;->mCount:I

    .line 241
    return-void
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 244
    iget v1, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;->mCount:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
