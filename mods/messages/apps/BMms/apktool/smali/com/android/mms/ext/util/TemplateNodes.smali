.class public Lcom/android/mms/ext/util/TemplateNodes;
.super Ljava/lang/Object;
.source "TemplateNodes.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/mms/ext/util/TemplateNodes;",
        ">;"
    }
.end annotation


# instance fields
.field private content:Ljava/lang/String;

.field private rank:I

.field private timeStamp:J


# direct methods
.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/mms/ext/util/TemplateNodes;->content:Ljava/lang/String;

    .line 42
    iput p2, p0, Lcom/android/mms/ext/util/TemplateNodes;->rank:I

    .line 43
    iput-wide p3, p0, Lcom/android/mms/ext/util/TemplateNodes;->timeStamp:J

    .line 44
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/mms/ext/util/TemplateNodes;)I
    .locals 4

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/android/mms/ext/util/TemplateNodes;->getRank()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 33
    invoke-virtual {p1}, Lcom/android/mms/ext/util/TemplateNodes;->getRank()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/mms/ext/util/TemplateNodes;->getRank()I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ext/util/TemplateNodes;->getTimeStamp()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 35
    invoke-virtual {p1}, Lcom/android/mms/ext/util/TemplateNodes;->getTimeStamp()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/mms/ext/util/TemplateNodes;->getTimeStamp()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0

    .line 37
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 30
    check-cast p1, Lcom/android/mms/ext/util/TemplateNodes;

    invoke-virtual {p0, p1}, Lcom/android/mms/ext/util/TemplateNodes;->compareTo(Lcom/android/mms/ext/util/TemplateNodes;)I

    move-result v0

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/mms/ext/util/TemplateNodes;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getRank()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/android/mms/ext/util/TemplateNodes;->rank:I

    return v0
.end method

.method public getTimeStamp()J
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/android/mms/ext/util/TemplateNodes;->timeStamp:J

    return-wide v0
.end method
