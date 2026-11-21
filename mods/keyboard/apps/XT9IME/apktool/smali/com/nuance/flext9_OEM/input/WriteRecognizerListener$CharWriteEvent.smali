.class public Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$CharWriteEvent;
.super Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$WriteEvent;
.source "WriteRecognizerListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/WriteRecognizerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CharWriteEvent"
.end annotation


# instance fields
.field public mChar:C


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$WriteEvent;-><init>(Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$WriteEvent;)V

    .line 77
    return-void
.end method

.method public constructor <init>(C)V
    .locals 2

    .prologue
    .line 70
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$WriteEvent;-><init>(ILjava/lang/Object;)V

    .line 71
    iput-char p1, p0, Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$CharWriteEvent;->mChar:C

    .line 72
    return-void
.end method
