.class public Lcom/nuance/flext9_OEM/input/CandidatesListView$RollAverage;
.super Ljava/lang/Object;
.source "CandidatesListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/CandidatesListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RollAverage"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field final synthetic $assertionsDisabled:Z

.field private mFlushed:Z

.field private final mKeepRatio:F

.field private mVal:F

.field final synthetic this$0:Lcom/nuance/flext9_OEM/input/CandidatesListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/nuance/flext9_OEM/input/CandidatesListView$RollAverage;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/nuance/flext9_OEM/input/CandidatesListView$RollAverage;->-assertionsDisabled:Z

    .line 129
    return-void
.end method

.method public constructor <init>(Lcom/nuance/flext9_OEM/input/CandidatesListView;F)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView$RollAverage;->this$0:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput p2, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView$RollAverage;->mKeepRatio:F

    .line 136
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView$RollAverage;->flush()V

    .line 137
    return-void
.end method


# virtual methods
.method public add(F)V
    .locals 3

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView$RollAverage;->isFlushed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iput p1, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView$RollAverage;->mVal:F

    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView$RollAverage;->mFlushed:Z

    .line 149
    :goto_0
    return-void

    .line 146
    :cond_0
    iget v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView$RollAverage;->mKeepRatio:F

    iget v1, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView$RollAverage;->mVal:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView$RollAverage;->mKeepRatio:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView$RollAverage;->mVal:F

    goto :goto_0
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView$RollAverage;->mFlushed:Z

    .line 158
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView$RollAverage;->mVal:F

    .line 159
    return-void
.end method

.method public get()F
    .locals 1

    .prologue
    .line 152
    sget-boolean v0, Lcom/nuance/flext9_OEM/input/CandidatesListView$RollAverage;->-assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView$RollAverage;->isFlushed()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 153
    :cond_0
    iget v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView$RollAverage;->mVal:F

    return v0
.end method

.method public isFlushed()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView$RollAverage;->mFlushed:Z

    return v0
.end method
