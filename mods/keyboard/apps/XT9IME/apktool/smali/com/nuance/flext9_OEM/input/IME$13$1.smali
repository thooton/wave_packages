.class Lcom/nuance/flext9_OEM/input/IME$13$1;
.super Ljava/lang/Object;
.source "IME.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/flext9_OEM/input/IME$13;->onFocusChange(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nuance/flext9_OEM/input/IME$13;


# direct methods
.method constructor <init>(Lcom/nuance/flext9_OEM/input/IME$13;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/IME$13$1;->this$1:Lcom/nuance/flext9_OEM/input/IME$13;

    .line 4014
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4017
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME$13$1;->this$1:Lcom/nuance/flext9_OEM/input/IME$13;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/IME$13;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/IME;->-get9(Lcom/nuance/flext9_OEM/input/IME;)Lcom/nuance/flext9_OEM/input/HorizontalPager;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME$13$1;->this$1:Lcom/nuance/flext9_OEM/input/IME$13;

    iget-object v1, v1, Lcom/nuance/flext9_OEM/input/IME$13;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/IME;->-get9(Lcom/nuance/flext9_OEM/input/IME;)Lcom/nuance/flext9_OEM/input/HorizontalPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/HorizontalPager;->getCurrentScreen()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/HorizontalPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 4019
    invoke-virtual {v0}, Landroid/widget/GridView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4020
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/GridView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 4021
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME$13$1;->this$1:Lcom/nuance/flext9_OEM/input/IME$13;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/IME$13;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/IME;->-get3(Lcom/nuance/flext9_OEM/input/IME;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 4022
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME$13$1;->this$1:Lcom/nuance/flext9_OEM/input/IME$13;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/IME$13;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/IME;->-get3(Lcom/nuance/flext9_OEM/input/IME;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME$13$1;->this$1:Lcom/nuance/flext9_OEM/input/IME$13;

    iget-object v1, v1, Lcom/nuance/flext9_OEM/input/IME$13;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/IME;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 4023
    const v2, 0x7f020029

    .line 4022
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4029
    :goto_0
    return-void

    .line 4025
    :cond_0
    invoke-virtual {v0}, Landroid/widget/GridView;->requestFocus()Z

    .line 4026
    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setSelection(I)V

    .line 4027
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME$13$1;->this$1:Lcom/nuance/flext9_OEM/input/IME$13;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/IME$13;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    const v1, 0x7f020028

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/IME;->setFocusForcategory(I)V

    goto :goto_0
.end method
