.class public Lcom/android/providers/contacts/aggregation/util/RawContactMatchingCandidates;
.super Ljava/lang/Object;
.source "RawContactMatchingCandidates.java"


# instance fields
.field private mBestMatches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/providers/contacts/aggregation/util/MatchScore;",
            ">;"
        }
    .end annotation
.end field

.field private mRawContactIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mRawContactToAccount:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mRawContactToContact:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/android/providers/contacts/aggregation/util/RawContactMatchingCandidates;->mRawContactIds:Ljava/util/Set;

    .line 35
    iput-object v0, p0, Lcom/android/providers/contacts/aggregation/util/RawContactMatchingCandidates;->mRawContactToContact:Ljava/util/Map;

    .line 36
    iput-object v0, p0, Lcom/android/providers/contacts/aggregation/util/RawContactMatchingCandidates;->mRawContactToAccount:Ljava/util/Map;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/aggregation/util/RawContactMatchingCandidates;->mBestMatches:Ljava/util/List;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/providers/contacts/aggregation/util/MatchScore;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/android/providers/contacts/aggregation/util/RawContactMatchingCandidates;->mRawContactIds:Ljava/util/Set;

    .line 35
    iput-object v0, p0, Lcom/android/providers/contacts/aggregation/util/RawContactMatchingCandidates;->mRawContactToContact:Ljava/util/Map;

    .line 36
    iput-object v0, p0, Lcom/android/providers/contacts/aggregation/util/RawContactMatchingCandidates;->mRawContactToAccount:Ljava/util/Map;

    .line 39
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iput-object p1, p0, Lcom/android/providers/contacts/aggregation/util/RawContactMatchingCandidates;->mBestMatches:Ljava/util/List;

    .line 41
    return-void
.end method

.method private createRawContactIdSet()V
    .locals 6

    .prologue
    .line 109
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/aggregation/util/RawContactMatchingCandidates;->mRawContactIds:Ljava/util/Set;

    .line 110
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/util/RawContactMatchingCandidates;->mBestMatches:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 111
    iget-object v2, p0, Lcom/android/providers/contacts/aggregation/util/RawContactMatchingCandidates;->mRawContactIds:Ljava/util/Set;

    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/util/RawContactMatchingCandidates;->mBestMatches:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/aggregation/util/MatchScore;

    invoke-virtual {v0}, Lcom/android/providers/contacts/aggregation/util/MatchScore;->getRawContactId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 110
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 113
    :cond_0
    return-void
.end method

.method private createRawContactToAccountMap()V
    .locals 6

    .prologue
    .line 101
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/aggregation/util/RawContactMatchingCandidates;->mRawContactToAccount:Ljava/util/Map;

    .line 102
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/util/RawContactMatchingCandidates;->mBestMatches:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 103
    iget-object v2, p0, Lcom/android/providers/contacts/aggregation/util/RawContactMatchingCandidates;->mRawContactToAccount:Ljava/util/Map;

    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/util/RawContactMatchingCandidates;->mBestMatches:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/aggregation/util/MatchScore;

    invoke-virtual {v0}, Lcom/android/providers/contacts/aggregation/util/MatchScore;->getRawContactId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 104
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/util/RawContactMatchingCandidates;->mBestMatches:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/aggregation/util/MatchScore;

    invoke-virtual {v0}, Lcom/android/providers/contacts/aggregation/util/MatchScore;->getAccountId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 103
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 106
    :cond_0
    return-void
.end method

.method private createRawContactToContactMap()V
    .locals 6

    .prologue
    .line 93
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/aggregation/util/RawContactMatchingCandidates;->mRawContactToContact:Ljava/util/Map;

    .line 94
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/util/RawContactMatchingCandidates;->mBestMatches:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 95
    iget-object v2, p0, Lcom/android/providers/contacts/aggregation/util/RawContactMatchingCandidates;->mRawContactToContact:Ljava/util/Map;

    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/util/RawContactMatchingCandidates;->mBestMatches:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/aggregation/util/MatchScore;

    invoke-virtual {v0}, Lcom/android/providers/contacts/aggregation/util/MatchScore;->getRawContactId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 96
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/util/RawContactMatchingCandidates;->mBestMatches:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/aggregation/util/MatchScore;

    invoke-virtual {v0}, Lcom/android/providers/contacts/aggregation/util/MatchScore;->getContactId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 95
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 98
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lcom/android/providers/contacts/aggregation/util/MatchScore;)V
    .locals 4

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/util/RawContactMatchingCandidates;->mBestMatches:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/util/RawContactMatchingCandidates;->mRawContactIds:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/util/RawContactMatchingCandidates;->mRawContactIds:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/android/providers/contacts/aggregation/util/MatchScore;->getRawContactId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/util/RawContactMatchingCandidates;->mRawContactToAccount:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/util/RawContactMatchingCandidates;->mRawContactToAccount:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/providers/contacts/aggregation/util/MatchScore;->getRawContactId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/providers/contacts/aggregation/util/MatchScore;->getAccountId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/util/RawContactMatchingCandidates;->mRawContactToContact:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 60
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/util/RawContactMatchingCandidates;->mRawContactToContact:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/providers/contacts/aggregation/util/MatchScore;->getRawContactId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/providers/contacts/aggregation/util/MatchScore;->getContactId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_2
    return-void
.end method

.method public getContactId(Ljava/lang/Long;)Ljava/lang/Long;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/util/RawContactMatchingCandidates;->mRawContactToContact:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 80
    invoke-direct {p0}, Lcom/android/providers/contacts/aggregation/util/RawContactMatchingCandidates;->createRawContactToContactMap()V

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/util/RawContactMatchingCandidates;->mRawContactToContact:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/util/RawContactMatchingCandidates;->mBestMatches:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRawContactIdSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/util/RawContactMatchingCandidates;->mRawContactIds:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 66
    invoke-direct {p0}, Lcom/android/providers/contacts/aggregation/util/RawContactMatchingCandidates;->createRawContactIdSet()V

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/util/RawContactMatchingCandidates;->mRawContactIds:Ljava/util/Set;

    return-object v0
.end method

.method public getRawContactToAccount()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/util/RawContactMatchingCandidates;->mRawContactToAccount:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 73
    invoke-direct {p0}, Lcom/android/providers/contacts/aggregation/util/RawContactMatchingCandidates;->createRawContactToAccountMap()V

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/util/RawContactMatchingCandidates;->mRawContactToAccount:Ljava/util/Map;

    return-object v0
.end method
