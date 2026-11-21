.class Lcom/nuance/flext9_OEM/input/IME$11;
.super Ljava/lang/Object;
.source "IME.java"

# interfaces
.implements Lcom/nuance/flext9_OEM/input/HorizontalPager$OnScreenSwitchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/flext9_OEM/input/IME;->initEmojiGridView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/flext9_OEM/input/IME;

.field final synthetic val$emojisTab:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/nuance/flext9_OEM/input/IME;Landroid/widget/LinearLayout;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/IME$11;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    iput-object p2, p0, Lcom/nuance/flext9_OEM/input/IME$11;->val$emojisTab:Landroid/widget/LinearLayout;

    .line 3989
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onScreenSwitched(I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    move v0, v1

    .line 3992
    :goto_0
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/IME$11;->val$emojisTab:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 3993
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/IME$11;->val$emojisTab:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setPressed(Z)V

    .line 3994
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/IME$11;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    const v3, 0x7f020028

    invoke-virtual {v2, v3}, Lcom/nuance/flext9_OEM/input/IME;->setFocusForcategory(I)V

    .line 3992
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3996
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME$11;->val$emojisTab:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 3997
    return-void
.end method
