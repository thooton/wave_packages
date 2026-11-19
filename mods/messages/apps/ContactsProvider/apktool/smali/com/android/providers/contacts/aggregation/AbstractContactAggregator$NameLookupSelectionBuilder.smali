.class public final Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$NameLookupSelectionBuilder;
.super Lcom/android/providers/contacts/NameLookupBuilder;
.source "AbstractContactAggregator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "NameLookupSelectionBuilder"
.end annotation


# instance fields
.field private final mNameLookupCandidates:Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;

.field private mSelection:Ljava/lang/StringBuilder;

.field final synthetic this$0:Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;Lcom/android/providers/contacts/NameSplitter;Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;)V
    .locals 2

    .prologue
    .line 1083
    iput-object p1, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$NameLookupSelectionBuilder;->this$0:Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;

    .line 1084
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/NameLookupBuilder;-><init>(Lcom/android/providers/contacts/NameSplitter;)V

    .line 1079
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1080
    const-string/jumbo v1, "normalized_name IN("

    .line 1079
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$NameLookupSelectionBuilder;->mSelection:Ljava/lang/StringBuilder;

    .line 1085
    iput-object p3, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$NameLookupSelectionBuilder;->mNameLookupCandidates:Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;

    .line 1086
    return-void
.end method


# virtual methods
.method protected getCommonNicknameClusters(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$NameLookupSelectionBuilder;->this$0:Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;

    iget-object v0, v0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mCommonNicknameCache:Lcom/android/providers/contacts/aggregation/util/CommonNicknameCache;

    invoke-virtual {v0, p1}, Lcom/android/providers/contacts/aggregation/util/CommonNicknameCache;->getCommonNicknameClusters(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLookupType(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 1112
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$NameLookupSelectionBuilder;->mNameLookupCandidates:Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;

    iget v0, v0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;->mCount:I

    if-ge v1, v0, :cond_1

    .line 1113
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$NameLookupSelectionBuilder;->mNameLookupCandidates:Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;

    iget-object v0, v0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$NameMatchCandidate;

    iget-object v0, v0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$NameMatchCandidate;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1114
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$NameLookupSelectionBuilder;->mNameLookupCandidates:Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;

    iget-object v0, v0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$NameMatchCandidate;

    iget v0, v0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$NameMatchCandidate;->mLookupType:I

    return v0

    .line 1112
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1117
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getSelection()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1106
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$NameLookupSelectionBuilder;->mSelection:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$NameLookupSelectionBuilder;->mSelection:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1107
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$NameLookupSelectionBuilder;->mSelection:Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1108
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$NameLookupSelectionBuilder;->mSelection:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected insertNameLookup(JJILjava/lang/String;)V
    .locals 2

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$NameLookupSelectionBuilder;->mNameLookupCandidates:Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;

    invoke-virtual {v0, p6, p5}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;->add(Ljava/lang/String;I)V

    .line 1097
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$NameLookupSelectionBuilder;->mSelection:Ljava/lang/StringBuilder;

    invoke-static {v0, p6}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1098
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$NameLookupSelectionBuilder;->mSelection:Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1099
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$NameLookupSelectionBuilder;->mNameLookupCandidates:Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;

    invoke-virtual {v0}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;->isEmpty()Z

    move-result v0

    return v0
.end method
