.class Lcom/nuance/flext9_OEM/input/IME$6;
.super Ljava/lang/Object;
.source "IME.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/flext9_OEM/input/IME;->showLanguageMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/flext9_OEM/input/IME;

.field final synthetic val$languageAdatper:Lcom/nuance/flext9_OEM/input/LanguageListAdapter;


# direct methods
.method constructor <init>(Lcom/nuance/flext9_OEM/input/IME;Lcom/nuance/flext9_OEM/input/LanguageListAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/IME$6;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    iput-object p2, p0, Lcom/nuance/flext9_OEM/input/IME$6;->val$languageAdatper:Lcom/nuance/flext9_OEM/input/LanguageListAdapter;

    .line 2607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    const/16 v3, 0x65

    .line 2610
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2611
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME$6;->val$languageAdatper:Lcom/nuance/flext9_OEM/input/LanguageListAdapter;

    invoke-virtual {v0, p2}, Lcom/nuance/flext9_OEM/input/LanguageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2612
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 2614
    instance-of v1, v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    if-eqz v1, :cond_1

    .line 2615
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME$6;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/IME;->-get1(Lcom/nuance/flext9_OEM/input/IME;)Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v1

    .line 2617
    check-cast v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    .line 2618
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->saveAsCurrent()V

    .line 2621
    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2623
    iget v2, v1, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mDefaultLayoutId:I

    .line 2622
    invoke-static {v2}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->isAlphabetic(I)Z

    move-result v2

    .line 2621
    if-eqz v2, :cond_0

    .line 2624
    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mParent:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    .line 2625
    iget-object v1, v1, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    .line 2624
    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->setInputMode(Ljava/lang/String;)V

    .line 2628
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME$6;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/IME;->-get7(Lcom/nuance/flext9_OEM/input/IME;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME$6;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/IME;->-get2(Lcom/nuance/flext9_OEM/input/IME;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/InputView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputView;->finishInput()V

    .line 2630
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME$6;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/IME;->-get4(Lcom/nuance/flext9_OEM/input/IME;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2631
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME$6;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/IME;->-get4(Lcom/nuance/flext9_OEM/input/IME;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME$6;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/IME;->-get4(Lcom/nuance/flext9_OEM/input/IME;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2632
    const-wide/16 v2, 0x5

    .line 2631
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2633
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME$6;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nuance/flext9_OEM/input/IME;->-set1(Lcom/nuance/flext9_OEM/input/IME;Z)Z

    .line 2635
    :cond_1
    return-void
.end method
