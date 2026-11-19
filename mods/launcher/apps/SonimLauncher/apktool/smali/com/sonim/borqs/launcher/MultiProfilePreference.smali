.class public Lcom/sonim/borqs/launcher/MultiProfilePreference;
.super Landroid/preference/Preference;
.source "MultiProfilePreference.java"


# instance fields
.field private mProfileText:Ljava/lang/String;

.field private mProfileTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 32
    const v0, 0x7f0e0027

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonim/borqs/launcher/MultiProfilePreference;->mProfileTextView:Landroid/widget/TextView;

    .line 34
    iget-object v0, p0, Lcom/sonim/borqs/launcher/MultiProfilePreference;->mProfileText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/MultiProfilePreference;->setProfileText(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public setProfileText(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 38
    iput-object p1, p0, Lcom/sonim/borqs/launcher/MultiProfilePreference;->mProfileText:Ljava/lang/String;

    .line 39
    iget-object v0, p0, Lcom/sonim/borqs/launcher/MultiProfilePreference;->mProfileTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/sonim/borqs/launcher/MultiProfilePreference;->mProfileTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonim/borqs/launcher/MultiProfilePreference;->mProfileText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    :cond_0
    return-void
.end method
