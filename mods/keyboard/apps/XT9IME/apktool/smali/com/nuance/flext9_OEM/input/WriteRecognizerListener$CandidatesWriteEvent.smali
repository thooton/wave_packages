.class public Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$CandidatesWriteEvent;
.super Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$WriteEvent;
.source "WriteRecognizerListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/WriteRecognizerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CandidatesWriteEvent"
.end annotation


# instance fields
.field public mCandidates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$WriteEvent;-><init>(Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$WriteEvent;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$WriteEvent;-><init>(ILjava/lang/Object;)V

    .line 43
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$CandidatesWriteEvent;->mCandidates:Ljava/util/List;

    .line 44
    return-void
.end method
