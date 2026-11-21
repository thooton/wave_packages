.class public interface abstract Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;
.super Ljava/lang/Object;
.source "HardKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/HardKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HardKeyEventListener"
.end annotation


# virtual methods
.method public abstract getInputMode()Ljava/lang/String;
.end method

.method public abstract getKdbId()I
.end method

.method public abstract getLanguage()I
.end method

.method public abstract getLayout()I
.end method

.method public abstract getShiftedState()I
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract onHardKeyEvent(Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;)Z
.end method

.method public abstract resetShiftStat()V
.end method

.method public abstract setBackLayout()V
.end method

.method public abstract setInputMode(Ljava/lang/String;)Z
.end method

.method public abstract setLanguage(I)Z
.end method

.method public abstract setLayout(I)Z
.end method

.method public abstract switchFromSymbolMode()V
.end method
