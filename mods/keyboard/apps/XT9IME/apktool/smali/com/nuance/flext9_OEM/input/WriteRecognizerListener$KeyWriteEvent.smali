.class public Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$KeyWriteEvent;
.super Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$WriteEvent;
.source "WriteRecognizerListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/WriteRecognizerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyWriteEvent"
.end annotation


# instance fields
.field public mKey:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$WriteEvent;-><init>(Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$WriteEvent;)V

    .line 91
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 84
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x5

    invoke-direct {p0, v1, v0}, Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$WriteEvent;-><init>(ILjava/lang/Object;)V

    .line 85
    iput p1, p0, Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$KeyWriteEvent;->mKey:I

    .line 86
    return-void
.end method
