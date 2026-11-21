.class Lcom/nuance/flext9_OEM/input/EnableIMEActivity$1;
.super Ljava/lang/Object;
.source "EnableIMEActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/flext9_OEM/input/EnableIMEActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/flext9_OEM/input/EnableIMEActivity;


# direct methods
.method constructor <init>(Lcom/nuance/flext9_OEM/input/EnableIMEActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/EnableIMEActivity$1;->this$0:Lcom/nuance/flext9_OEM/input/EnableIMEActivity;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 25
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/EnableIMEActivity$1;->this$0:Lcom/nuance/flext9_OEM/input/EnableIMEActivity;

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/EnableIMEActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 26
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/EnableIMEActivity$1;->this$0:Lcom/nuance/flext9_OEM/input/EnableIMEActivity;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/EnableIMEActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 28
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/EnableIMEActivity$1;->this$0:Lcom/nuance/flext9_OEM/input/EnableIMEActivity;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.INPUT_METHOD_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/EnableIMEActivity;->startActivity(Landroid/content/Intent;)V

    .line 32
    return-void
.end method
