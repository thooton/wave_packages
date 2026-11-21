.class Lcom/nuance/flext9_OEM/input/IME$3;
.super Ljava/lang/Object;
.source "IME.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/IME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/flext9_OEM/input/IME;


# direct methods
.method constructor <init>(Lcom/nuance/flext9_OEM/input/IME;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/IME$3;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    .line 3832
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 3835
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME$3;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/IME;->-get9(Lcom/nuance/flext9_OEM/input/IME;)Lcom/nuance/flext9_OEM/input/HorizontalPager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/nuance/flext9_OEM/input/HorizontalPager;->setCurrentScreen(IZ)V

    .line 3836
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME$3;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/IME;->-get9(Lcom/nuance/flext9_OEM/input/IME;)Lcom/nuance/flext9_OEM/input/HorizontalPager;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME$3;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/IME;->-get9(Lcom/nuance/flext9_OEM/input/IME;)Lcom/nuance/flext9_OEM/input/HorizontalPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/HorizontalPager;->getCurrentScreen()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/HorizontalPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 3837
    invoke-virtual {v0}, Landroid/widget/GridView;->requestFocus()Z

    .line 3838
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelection(I)V

    .line 3839
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME$3;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    const v1, 0x7f020028

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/IME;->setFocusForcategory(I)V

    .line 3840
    return-void
.end method
