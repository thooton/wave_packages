.class Lcom/nuance/flext9_OEM/input/AboutPreference;
.super Landroid/preference/Preference;
.source "AboutPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AboutPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/nuance/flext9_OEM/input/About;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 16
    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/AboutPreference;->setIntent(Landroid/content/Intent;)V

    .line 17
    return-void
.end method
