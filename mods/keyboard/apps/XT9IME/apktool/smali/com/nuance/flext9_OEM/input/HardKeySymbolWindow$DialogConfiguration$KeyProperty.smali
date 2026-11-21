.class Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;
.super Ljava/lang/Object;
.source "HardKeySymbolWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyProperty"
.end annotation


# instance fields
.field keyBackgroundColor:I

.field keyDownGap:I

.field keyFocusedColor:I

.field keyFont:I

.field keyHeight:I

.field keyLeftGap:I

.field keyPressedColor:I

.field keyRighttGap:I

.field keyShortcutColor:I

.field keyShortcutSize:F

.field keyTextColor:I

.field keyTextScale:F

.field keyTextSize:F

.field keyUpGap:I

.field keyWidth:I

.field keysInRow:I

.field keysInRowLandscape:I

.field rowFocusedColor:I

.field final synthetic this$1:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;

.field updated:Z


# direct methods
.method public constructor <init>(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;)V
    .locals 1

    .prologue
    const/16 v0, 0x28

    .line 752
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->this$1:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 731
    iput v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keyWidth:I

    .line 732
    iput v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keyHeight:I

    .line 734
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keysInRow:I

    .line 753
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->updated:Z

    .line 754
    return-void
.end method
