.class public Lcom/nuance/flext9_OEM/input/WriteRecognizerCandidates;
.super Ljava/lang/Object;
.source "WriteRecognizerCandidates.java"


# instance fields
.field mCandidates:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteRecognizerCandidates;->mCandidates:Ljava/util/LinkedList;

    .line 5
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteRecognizerCandidates;->mCandidates:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 11
    return-void
.end method

.method public getAt(I)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 14
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/WriteRecognizerCandidates;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteRecognizerCandidates;->mCandidates:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0

    .line 17
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getList()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteRecognizerCandidates;->mCandidates:Ljava/util/LinkedList;

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteRecognizerCandidates;->mCandidates:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method
