.class Lcom/nuance/flext9_OEM/input/InputModePreference$1;
.super Ljava/lang/Object;
.source "InputModePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/flext9_OEM/input/InputModePreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/flext9_OEM/input/InputModePreference;


# direct methods
.method constructor <init>(Lcom/nuance/flext9_OEM/input/InputModePreference;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/InputModePreference$1;->this$0:Lcom/nuance/flext9_OEM/input/InputModePreference;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputModePreference$1;->this$0:Lcom/nuance/flext9_OEM/input/InputModePreference;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/InputModePreference$1;->this$0:Lcom/nuance/flext9_OEM/input/InputModePreference;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/InputModePreference;->-get0(Lcom/nuance/flext9_OEM/input/InputModePreference;)Lcom/nuance/flext9_OEM/input/EnableButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/EnableButton;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/nuance/flext9_OEM/input/InputModePreference;->-wrap0(Lcom/nuance/flext9_OEM/input/InputModePreference;Z)V

    .line 63
    return-void
.end method
