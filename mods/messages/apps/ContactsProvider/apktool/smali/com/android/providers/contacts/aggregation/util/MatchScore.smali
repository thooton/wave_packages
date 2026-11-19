.class public Lcom/android/providers/contacts/aggregation/util/MatchScore;
.super Ljava/lang/Object;
.source "MatchScore.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/providers/contacts/aggregation/util/MatchScore;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccountId:J

.field private mContactId:J

.field private mKeepIn:Z

.field private mKeepOut:Z

.field private mMatchCount:I

.field private mPrimaryScore:I

.field private mRawContactId:J

.field private mSecondaryScore:I


# direct methods
.method public constructor <init>(J)V
    .locals 3

    .prologue
    const-wide/16 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-wide v0, p0, Lcom/android/providers/contacts/aggregation/util/MatchScore;->mRawContactId:J

    .line 46
    iput-wide p1, p0, Lcom/android/providers/contacts/aggregation/util/MatchScore;->mContactId:J

    .line 47
    iput-wide v0, p0, Lcom/android/providers/contacts/aggregation/util/MatchScore;->mAccountId:J

    .line 48
    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-wide p1, p0, Lcom/android/providers/contacts/aggregation/util/MatchScore;->mRawContactId:J

    .line 40
    iput-wide p3, p0, Lcom/android/providers/contacts/aggregation/util/MatchScore;->mContactId:J

    .line 41
    iput-wide p5, p0, Lcom/android/providers/contacts/aggregation/util/MatchScore;->mAccountId:J

    .line 42
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/providers/contacts/aggregation/util/MatchScore;)I
    .locals 2

    .prologue
    .line 141
    invoke-virtual {p1}, Lcom/android/providers/contacts/aggregation/util/MatchScore;->getScore()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/providers/contacts/aggregation/util/MatchScore;->getScore()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 136
    check-cast p1, Lcom/android/providers/contacts/aggregation/util/MatchScore;

    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/aggregation/util/MatchScore;->compareTo(Lcom/android/providers/contacts/aggregation/util/MatchScore;)I

    move-result v0

    return v0
.end method

.method public getAccountId()J
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/android/providers/contacts/aggregation/util/MatchScore;->mAccountId:J

    return-wide v0
.end method

.method public getContactId()J
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/android/providers/contacts/aggregation/util/MatchScore;->mContactId:J

    return-wide v0
.end method

.method public getPrimaryScore()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/android/providers/contacts/aggregation/util/MatchScore;->mPrimaryScore:I

    return v0
.end method

.method public getRawContactId()J
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/android/providers/contacts/aggregation/util/MatchScore;->mRawContactId:J

    return-wide v0
.end method

.method public getScore()I
    .locals 2

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/providers/contacts/aggregation/util/MatchScore;->mKeepOut:Z

    if-eqz v0, :cond_0

    .line 102
    const/4 v0, 0x0

    return v0

    .line 105
    :cond_0
    iget-boolean v0, p0, Lcom/android/providers/contacts/aggregation/util/MatchScore;->mKeepIn:Z

    if-eqz v0, :cond_1

    .line 106
    const/16 v0, 0x64

    return v0

    .line 109
    :cond_1
    iget v0, p0, Lcom/android/providers/contacts/aggregation/util/MatchScore;->mPrimaryScore:I

    iget v1, p0, Lcom/android/providers/contacts/aggregation/util/MatchScore;->mSecondaryScore:I

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/android/providers/contacts/aggregation/util/MatchScore;->mPrimaryScore:I

    .line 113
    :goto_0
    mul-int/lit16 v0, v0, 0x3e8

    iget v1, p0, Lcom/android/providers/contacts/aggregation/util/MatchScore;->mMatchCount:I

    add-int/2addr v0, v1

    return v0

    .line 109
    :cond_2
    iget v0, p0, Lcom/android/providers/contacts/aggregation/util/MatchScore;->mSecondaryScore:I

    goto :goto_0
.end method

.method public getSecondaryScore()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/android/providers/contacts/aggregation/util/MatchScore;->mSecondaryScore:I

    return v0
.end method

.method public isKeepIn()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/android/providers/contacts/aggregation/util/MatchScore;->mKeepIn:Z

    return v0
.end method

.method public isKeepOut()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/android/providers/contacts/aggregation/util/MatchScore;->mKeepOut:Z

    return v0
.end method

.method public keepIn()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/contacts/aggregation/util/MatchScore;->mKeepIn:Z

    .line 94
    return-void
.end method

.method public keepOut()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/contacts/aggregation/util/MatchScore;->mKeepOut:Z

    .line 98
    return-void
.end method

.method public reset(J)V
    .locals 9

    .prologue
    const-wide/16 v2, 0x0

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, v2

    .line 62
    invoke-virtual/range {v1 .. v7}, Lcom/android/providers/contacts/aggregation/util/MatchScore;->reset(JJJ)V

    .line 63
    return-void
.end method

.method public reset(JJJ)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    iput-wide p1, p0, Lcom/android/providers/contacts/aggregation/util/MatchScore;->mRawContactId:J

    .line 52
    iput-wide p3, p0, Lcom/android/providers/contacts/aggregation/util/MatchScore;->mContactId:J

    .line 53
    iput-wide p5, p0, Lcom/android/providers/contacts/aggregation/util/MatchScore;->mAccountId:J

    .line 54
    iput-boolean v0, p0, Lcom/android/providers/contacts/aggregation/util/MatchScore;->mKeepIn:Z

    .line 55
    iput-boolean v0, p0, Lcom/android/providers/contacts/aggregation/util/MatchScore;->mKeepOut:Z

    .line 56
    iput v0, p0, Lcom/android/providers/contacts/aggregation/util/MatchScore;->mPrimaryScore:I

    .line 57
    iput v0, p0, Lcom/android/providers/contacts/aggregation/util/MatchScore;->mSecondaryScore:I

    .line 58
    iput v0, p0, Lcom/android/providers/contacts/aggregation/util/MatchScore;->mMatchCount:I

    .line 59
    return-void
.end method

.method public setPrimaryScore(I)V
    .locals 0

    .prologue
    .line 133
    iput p1, p0, Lcom/android/providers/contacts/aggregation/util/MatchScore;->mPrimaryScore:I

    .line 134
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/android/providers/contacts/aggregation/util/MatchScore;->mRawContactId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/providers/contacts/aggregation/util/MatchScore;->mContactId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/providers/contacts/aggregation/util/MatchScore;->mAccountId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/providers/contacts/aggregation/util/MatchScore;->mPrimaryScore:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 147
    const-string/jumbo v1, "/"

    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 147
    iget v1, p0, Lcom/android/providers/contacts/aggregation/util/MatchScore;->mSecondaryScore:I

    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 147
    const-string/jumbo v1, "("

    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 147
    iget v1, p0, Lcom/android/providers/contacts/aggregation/util/MatchScore;->mMatchCount:I

    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 147
    const-string/jumbo v1, ")"

    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updatePrimaryScore(I)V
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/android/providers/contacts/aggregation/util/MatchScore;->mPrimaryScore:I

    if-le p1, v0, :cond_0

    .line 80
    iput p1, p0, Lcom/android/providers/contacts/aggregation/util/MatchScore;->mPrimaryScore:I

    .line 82
    :cond_0
    iget v0, p0, Lcom/android/providers/contacts/aggregation/util/MatchScore;->mMatchCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/providers/contacts/aggregation/util/MatchScore;->mMatchCount:I

    .line 83
    return-void
.end method

.method public updateSecondaryScore(I)V
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/android/providers/contacts/aggregation/util/MatchScore;->mSecondaryScore:I

    if-le p1, v0, :cond_0

    .line 87
    iput p1, p0, Lcom/android/providers/contacts/aggregation/util/MatchScore;->mSecondaryScore:I

    .line 89
    :cond_0
    iget v0, p0, Lcom/android/providers/contacts/aggregation/util/MatchScore;->mMatchCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/providers/contacts/aggregation/util/MatchScore;->mMatchCount:I

    .line 90
    return-void
.end method
