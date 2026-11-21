.class public Lcom/nuance/flext9_OEM/input/SpeechWrapper;
.super Ljava/lang/Object;
.source "SpeechWrapper.java"

# interfaces
.implements Lcom/nuance/flext9_OEM/input/SpeechResultListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public getAlternateCandidates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public isHighlightedTextSpeechDictated()Z
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method public onResult(Lcom/nuance/flext9_OEM/input/SpeechResultListener$RecogitionStatus;Lcom/nuance/flext9_OEM/input/SpeechResultListener$Result;)V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public resumeSpeech(Lcom/nuance/flext9_OEM/input/InputView;II)V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public setHost(Lcom/nuance/flext9_OEM/input/InputView;)V
    .locals 0

    .prologue
    .line 15
    return-void
.end method

.method public speechChooseCandidate(I)V
    .locals 0

    .prologue
    .line 29
    return-void
.end method

.method public startSpeech(Lcom/nuance/flext9_OEM/input/InputView;II)V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method public stopSpeech()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public updateSelection(Landroid/view/inputmethod/InputConnection;IIIIII)V
    .locals 0

    .prologue
    .line 12
    return-void
.end method

.method public updateText(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 18
    return-void
.end method
