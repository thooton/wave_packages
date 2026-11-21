.class Lcom/nuance/flext9_OEM/input/KeyboardViewEx$3;
.super Ljava/lang/Object;
.source "KeyboardViewEx.java"

# interfaces
.implements Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->onLongPress(Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;


# direct methods
.method constructor <init>(Lcom/nuance/flext9_OEM/input/KeyboardViewEx;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$3;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    .line 1875
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onKey(I[I)V
    .locals 1

    .prologue
    .line 1878
    int-to-char v0, p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$3;->onText(Ljava/lang/CharSequence;)V

    .line 1879
    return-void
.end method

.method public onMultitapTimeout()V
    .locals 0

    .prologue
    .line 1907
    return-void
.end method

.method public onPress(I)V
    .locals 1

    .prologue
    .line 1894
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$3;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->-get1(Lcom/nuance/flext9_OEM/input/KeyboardViewEx;)Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1895
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$3;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->-get1(Lcom/nuance/flext9_OEM/input/KeyboardViewEx;)Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;->onPress(I)V

    .line 1897
    :cond_0
    return-void
.end method

.method public onRelease(I)V
    .locals 1

    .prologue
    .line 1900
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$3;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->-get1(Lcom/nuance/flext9_OEM/input/KeyboardViewEx;)Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1901
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$3;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->-get1(Lcom/nuance/flext9_OEM/input/KeyboardViewEx;)Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;->onRelease(I)V

    .line 1903
    :cond_0
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 1882
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$3;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->-get1(Lcom/nuance/flext9_OEM/input/KeyboardViewEx;)Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1883
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$3;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->-get1(Lcom/nuance/flext9_OEM/input/KeyboardViewEx;)Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;->onText(Ljava/lang/CharSequence;)V

    .line 1885
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$3;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->dismissPopupKeyboard()V

    .line 1886
    return-void
.end method

.method public onTrace(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1910
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$3;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->-get1(Lcom/nuance/flext9_OEM/input/KeyboardViewEx;)Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1911
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$3;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->-get1(Lcom/nuance/flext9_OEM/input/KeyboardViewEx;)Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;->onTrace(Ljava/util/ArrayList;)V

    .line 1913
    :cond_0
    return-void
.end method

.method public swipeDown()V
    .locals 0

    .prologue
    .line 1891
    return-void
.end method

.method public swipeLeft()V
    .locals 0

    .prologue
    .line 1888
    return-void
.end method

.method public swipeRight()V
    .locals 0

    .prologue
    .line 1889
    return-void
.end method

.method public swipeUp()V
    .locals 0

    .prologue
    .line 1890
    return-void
.end method
