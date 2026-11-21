.class Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$KeyLocation;
.super Ljava/lang/Object;
.source "HardKeySymbolWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyLocation"
.end annotation


# instance fields
.field public keyCode:I

.field public row:I

.field public shortCutNum:I

.field final synthetic this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;


# direct methods
.method public constructor <init>(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1537
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$KeyLocation;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1538
    iput v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$KeyLocation;->shortCutNum:I

    .line 1539
    iput v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$KeyLocation;->row:I

    .line 1540
    iput v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$KeyLocation;->keyCode:I

    .line 1541
    return-void
.end method
