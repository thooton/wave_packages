.class Lcom/nuance/flext9_OEM/input/InputSettings$SeekBarCreator;
.super Ljava/lang/Object;
.source "InputSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/InputSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SeekBarCreator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/flext9_OEM/input/InputSettings;


# direct methods
.method constructor <init>(Lcom/nuance/flext9_OEM/input/InputSettings;)V
    .locals 0

    .prologue
    .line 426
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/InputSettings$SeekBarCreator;->this$0:Lcom/nuance/flext9_OEM/input/InputSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    .prologue
    .line 429
    instance-of v0, p1, Landroid/preference/PreferenceScreen;

    if-nez v0, :cond_0

    .line 430
    const/4 v0, 0x0

    return v0

    .line 433
    :cond_0
    new-instance v1, Lcom/nuance/flext9_OEM/input/XT9SeekBarPreference;

    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/nuance/flext9_OEM/input/XT9SeekBarPreference;-><init>(Landroid/content/Context;)V

    .line 435
    const v0, 0x7f09014a

    invoke-virtual {v1, v0}, Lcom/nuance/flext9_OEM/input/XT9SeekBarPreference;->setDialogTitle(I)V

    move-object v0, p1

    .line 436
    check-cast v0, Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Lcom/nuance/flext9_OEM/input/XT9SeekBarPreference;->setParent(Landroid/preference/PreferenceScreen;)V

    .line 438
    check-cast p1, Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 439
    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/XT9SeekBarPreference;->show()V

    .line 440
    const/4 v0, 0x1

    return v0
.end method
