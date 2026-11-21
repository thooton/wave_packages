.class public Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$TextWriteEvent;
.super Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$WriteEvent;
.source "WriteRecognizerListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/WriteRecognizerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextWriteEvent"
.end annotation


# instance fields
.field public mText:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$WriteEvent;-><init>(Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$WriteEvent;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$WriteEvent;-><init>(ILjava/lang/Object;)V

    .line 57
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$TextWriteEvent;->mText:Ljava/lang/CharSequence;

    .line 58
    return-void
.end method
