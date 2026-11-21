.class Lcom/nuance/flext9_OEM/input/KeyboardViewEx$4;
.super Ljava/lang/Object;
.source "KeyboardViewEx.java"

# interfaces
.implements Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->showPopupKeyboard(ILjava/lang/CharSequence;)V
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
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$4;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    .line 2825
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onKey(I[I)V
    .locals 1

    .prologue
    .line 2827
    int-to-char v0, p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$4;->onText(Ljava/lang/CharSequence;)V

    .line 2828
    return-void
.end method

.method public onMultitapTimeout()V
    .locals 0

    .prologue
    .line 2886
    return-void
.end method

.method public onPress(I)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2853
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$4;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-virtual {v2}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->isShifted()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$4;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-static {v2}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->-get3(Lcom/nuance/flext9_OEM/input/KeyboardViewEx;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2858
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$4;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->-get1(Lcom/nuance/flext9_OEM/input/KeyboardViewEx;)Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2859
    if-eqz v0, :cond_1

    .line 2860
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$4;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->handleShiftPress()V

    .line 2862
    :cond_1
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$4;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->-get1(Lcom/nuance/flext9_OEM/input/KeyboardViewEx;)Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;->onPress(I)V

    .line 2863
    if-eqz v0, :cond_2

    .line 2864
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$4;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->handleShiftRelease()V

    .line 2867
    :cond_2
    return-void

    .line 2855
    :cond_3
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$4;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-virtual {v2}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->isShifted()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$4;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-static {v2}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->-get3(Lcom/nuance/flext9_OEM/input/KeyboardViewEx;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public onRelease(I)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2870
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$4;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-virtual {v2}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->isShifted()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$4;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-static {v2}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->-get3(Lcom/nuance/flext9_OEM/input/KeyboardViewEx;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2875
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$4;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->-get1(Lcom/nuance/flext9_OEM/input/KeyboardViewEx;)Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2876
    if-eqz v0, :cond_1

    .line 2877
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$4;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->handleShiftPress()V

    .line 2879
    :cond_1
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$4;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->-get1(Lcom/nuance/flext9_OEM/input/KeyboardViewEx;)Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;->onRelease(I)V

    .line 2880
    if-eqz v0, :cond_2

    .line 2881
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$4;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->handleShiftRelease()V

    .line 2884
    :cond_2
    return-void

    .line 2872
    :cond_3
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$4;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-virtual {v2}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->isShifted()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$4;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-static {v2}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->-get3(Lcom/nuance/flext9_OEM/input/KeyboardViewEx;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2831
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$4;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-virtual {v2}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->isShifted()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$4;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-static {v2}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->-get3(Lcom/nuance/flext9_OEM/input/KeyboardViewEx;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2836
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$4;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->-get1(Lcom/nuance/flext9_OEM/input/KeyboardViewEx;)Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2837
    if-eqz v0, :cond_1

    .line 2838
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$4;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->handleShiftPress()V

    .line 2840
    :cond_1
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$4;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->-get1(Lcom/nuance/flext9_OEM/input/KeyboardViewEx;)Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;->onText(Ljava/lang/CharSequence;)V

    .line 2841
    if-eqz v0, :cond_2

    .line 2842
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$4;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->handleShiftRelease()V

    .line 2845
    :cond_2
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$4;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->dismissPopupKeyboard()V

    .line 2846
    return-void

    .line 2833
    :cond_3
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$4;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-virtual {v2}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->isShifted()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$4;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-static {v2}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->-get3(Lcom/nuance/flext9_OEM/input/KeyboardViewEx;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
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
    .line 2889
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$4;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->-get1(Lcom/nuance/flext9_OEM/input/KeyboardViewEx;)Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2891
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$4;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->-get1(Lcom/nuance/flext9_OEM/input/KeyboardViewEx;)Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;->onTrace(Ljava/util/ArrayList;)V

    .line 2893
    :cond_0
    return-void
.end method

.method public swipeDown()V
    .locals 0

    .prologue
    .line 2850
    return-void
.end method

.method public swipeLeft()V
    .locals 0

    .prologue
    .line 2847
    return-void
.end method

.method public swipeRight()V
    .locals 0

    .prologue
    .line 2848
    return-void
.end method

.method public swipeUp()V
    .locals 0

    .prologue
    .line 2849
    return-void
.end method
