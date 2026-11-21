.class public Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$WriteEvent;
.super Ljava/lang/Object;
.source "WriteRecognizerListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/WriteRecognizerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WriteEvent"
.end annotation


# static fields
.field public static final TYPE_CANDIDATES:I = 0x1

.field public static final TYPE_CHAR:I = 0x2

.field public static final TYPE_INSTANT_GESTURE:I = 0x4

.field public static final TYPE_KEY:I = 0x5

.field public static final TYPE_TEXT:I = 0x3


# instance fields
.field public mData:Ljava/lang/Object;

.field public mType:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$WriteEvent;->mType:I

    .line 28
    iput-object p2, p0, Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$WriteEvent;->mData:Ljava/lang/Object;

    .line 29
    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$WriteEvent;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$WriteEvent;-><init>()V

    return-void
.end method
