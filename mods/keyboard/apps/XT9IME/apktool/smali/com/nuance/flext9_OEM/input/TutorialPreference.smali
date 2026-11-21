.class public Lcom/nuance/flext9_OEM/input/TutorialPreference;
.super Landroid/preference/Preference;
.source "TutorialPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/TutorialPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/nuance/flext9_OEM/input/Tutorial;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 14
    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/TutorialPreference;->setIntent(Landroid/content/Intent;)V

    .line 15
    return-void
.end method
