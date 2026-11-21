.class Lcom/nuance/flext9_OEM/input/IMEMenuView$ImeMenuItem;
.super Ljava/lang/Object;
.source "IMEMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/IMEMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImeMenuItem"
.end annotation


# instance fields
.field eventType:I

.field itemText:Ljava/lang/String;

.field final synthetic this$0:Lcom/nuance/flext9_OEM/input/IMEMenuView;

.field value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nuance/flext9_OEM/input/IMEMenuView;)V
    .locals 1

    .prologue
    .line 245
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/IMEMenuView$ImeMenuItem;->this$0:Lcom/nuance/flext9_OEM/input/IMEMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/IMEMenuView$ImeMenuItem;->itemText:Ljava/lang/String;

    .line 247
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/flext9_OEM/input/IMEMenuView$ImeMenuItem;->eventType:I

    .line 248
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/IMEMenuView$ImeMenuItem;->value:Ljava/lang/String;

    .line 249
    return-void
.end method
