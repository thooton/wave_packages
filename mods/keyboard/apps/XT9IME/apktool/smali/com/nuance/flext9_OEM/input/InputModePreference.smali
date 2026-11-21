.class public Lcom/nuance/flext9_OEM/input/InputModePreference;
.super Landroid/preference/Preference;
.source "InputModePreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEnabledCheckBox:Lcom/nuance/flext9_OEM/input/EnableButton;

.field public mInputMode:Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

.field private mMoreSettings:Landroid/widget/ImageView;


# direct methods
.method static synthetic -get0(Lcom/nuance/flext9_OEM/input/InputModePreference;)Lcom/nuance/flext9_OEM/input/EnableButton;
    .locals 1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputModePreference;->mEnabledCheckBox:Lcom/nuance/flext9_OEM/input/EnableButton;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/nuance/flext9_OEM/input/InputModePreference;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/flext9_OEM/input/InputModePreference;->setChecked(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/flext9_OEM/input/InputModePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;)V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/InputModePreference;->setLayoutResource(I)V

    .line 36
    const v0, 0x7f030021

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/InputModePreference;->setWidgetLayoutResource(I)V

    .line 38
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/InputModePreference;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/nuance/flext9_OEM/input/InputModePreference;->mInputMode:Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    .line 44
    return-void
.end method

.method private setChecked(Z)V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputModePreference;->mInputMode:Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    invoke-virtual {v0, p1}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->setEnabled(Z)V

    .line 96
    invoke-virtual {p0, p1}, Lcom/nuance/flext9_OEM/input/InputModePreference;->persistBoolean(Z)Z

    .line 97
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputModePreference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/InputModePreference;->notifyDependencyChange(Z)V

    .line 98
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputModePreference;->notifyChanged()V

    .line 99
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/InputModePreference;->showOrHideMoreSettingIndicator()V

    .line 100
    return-void
.end method

.method private showOrHideMoreSettingIndicator()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputModePreference;->mEnabledCheckBox:Lcom/nuance/flext9_OEM/input/EnableButton;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/EnableButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputModePreference;->mMoreSettings:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputModePreference;->mMoreSettings:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 54
    const v0, 0x7f0d003f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/InputModePreference;->mMoreSettings:Landroid/widget/ImageView;

    .line 55
    const v0, 0x7f0d003e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/EnableButton;

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/InputModePreference;->mEnabledCheckBox:Lcom/nuance/flext9_OEM/input/EnableButton;

    .line 56
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputModePreference;->mEnabledCheckBox:Lcom/nuance/flext9_OEM/input/EnableButton;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputModePreference;->mEnabledCheckBox:Lcom/nuance/flext9_OEM/input/EnableButton;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/InputModePreference;->mInputMode:Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/EnableButton;->setChecked(Z)V

    .line 58
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/InputModePreference;->showOrHideMoreSettingIndicator()V

    .line 60
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputModePreference;->mEnabledCheckBox:Lcom/nuance/flext9_OEM/input/EnableButton;

    new-instance v1, Lcom/nuance/flext9_OEM/input/InputModePreference$1;

    invoke-direct {v1, p0}, Lcom/nuance/flext9_OEM/input/InputModePreference$1;-><init>(Lcom/nuance/flext9_OEM/input/InputModePreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    :cond_0
    return-void
.end method

.method protected onClick()V
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputModePreference;->mEnabledCheckBox:Lcom/nuance/flext9_OEM/input/EnableButton;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/EnableButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/InputModePreference;->mContext:Landroid/content/Context;

    const-class v2, Lcom/nuance/flext9_OEM/input/InputSettings;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 76
    const-string/jumbo v1, "language_id"

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/InputModePreference;->mInputMode:Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    iget-object v2, v2, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mParent:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    iget v2, v2, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 77
    const-string/jumbo v1, "input_mode"

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/InputModePreference;->mInputMode:Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    iget-object v2, v2, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/InputModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 81
    :cond_0
    return-void
.end method
