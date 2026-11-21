.class Lcom/nuance/flext9_OEM/input/IME$12;
.super Ljava/lang/Object;
.source "IME.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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


# direct methods
.method constructor <init>(Lcom/nuance/flext9_OEM/input/IME;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/IME$12;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    .line 4000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    .prologue
    .line 4003
    if-eqz p2, :cond_0

    .line 4004
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME$12;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/IME;->-get9(Lcom/nuance/flext9_OEM/input/IME;)Lcom/nuance/flext9_OEM/input/HorizontalPager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/nuance/flext9_OEM/input/HorizontalPager;->setCurrentScreen(IZ)V

    .line 4005
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME$12;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    const v1, 0x7f020029

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/IME;->setFocusForcategory(I)V

    .line 4007
    :cond_0
    return-void
.end method
