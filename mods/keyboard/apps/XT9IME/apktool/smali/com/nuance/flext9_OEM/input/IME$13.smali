.class Lcom/nuance/flext9_OEM/input/IME$13;
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
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/IME$13;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    .line 4009
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4

    .prologue
    .line 4012
    if-eqz p2, :cond_0

    .line 4013
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 4014
    new-instance v1, Lcom/nuance/flext9_OEM/input/IME$13$1;

    invoke-direct {v1, p0}, Lcom/nuance/flext9_OEM/input/IME$13$1;-><init>(Lcom/nuance/flext9_OEM/input/IME$13;)V

    .line 4030
    const-wide/16 v2, 0xa

    .line 4014
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4032
    :cond_0
    return-void
.end method
