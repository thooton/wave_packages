.class public Lcom/nuance/flext9_OEM/input/SpeechResultListener$Result;
.super Ljava/lang/Object;
.source "SpeechResultListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/SpeechResultListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field public mShouldHasSpaceAfter:Z

.field public mShouldHasSpaceBefore:Z

.field public mText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;ZZ)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/SpeechResultListener$Result;->mText:Ljava/lang/CharSequence;

    .line 21
    iput-boolean p2, p0, Lcom/nuance/flext9_OEM/input/SpeechResultListener$Result;->mShouldHasSpaceBefore:Z

    .line 22
    iput-boolean p3, p0, Lcom/nuance/flext9_OEM/input/SpeechResultListener$Result;->mShouldHasSpaceAfter:Z

    .line 23
    return-void
.end method
