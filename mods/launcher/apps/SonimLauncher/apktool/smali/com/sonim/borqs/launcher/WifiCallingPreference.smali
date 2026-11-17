.class public Lcom/sonim/borqs/launcher/WifiCallingPreference;
.super Landroid/preference/Preference;
.source "WifiCallingPreference.java"


# instance fields
.field private mTextView:Landroid/widget/TextView;

.field private mWifiCallingState:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 34
    const v0, 0x7f0e0027

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonim/borqs/launcher/WifiCallingPreference;->mTextView:Landroid/widget/TextView;

    .line 35
    iget-object v0, p0, Lcom/sonim/borqs/launcher/WifiCallingPreference;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonim/borqs/launcher/WifiCallingPreference;->mWifiCallingState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    return-void
.end method

.method public setState(Z)V
    .locals 2

    .prologue
    .line 39
    if-eqz p1, :cond_1

    .line 40
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/WifiCallingPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonim/borqs/launcher/WifiCallingPreference;->mWifiCallingState:Ljava/lang/String;

    .line 44
    :goto_0
    iget-object v0, p0, Lcom/sonim/borqs/launcher/WifiCallingPreference;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/sonim/borqs/launcher/WifiCallingPreference;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonim/borqs/launcher/WifiCallingPreference;->mWifiCallingState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    :cond_0
    return-void

    .line 42
    :cond_1
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/WifiCallingPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonim/borqs/launcher/WifiCallingPreference;->mWifiCallingState:Ljava/lang/String;

    goto :goto_0
.end method
