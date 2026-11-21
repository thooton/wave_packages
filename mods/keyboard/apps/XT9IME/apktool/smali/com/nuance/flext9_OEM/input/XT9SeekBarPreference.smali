.class public Lcom/nuance/flext9_OEM/input/XT9SeekBarPreference;
.super Landroid/preference/DialogPreference;
.source "XT9SeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field public static final AUTO_ACCEPT_RECOGNIZE:Ljava/lang/String; = "auto_recpgnize_delay"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefault:I

.field private mMax:I

.field mParent:Landroid/preference/PreferenceScreen;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mUnit:Ljava/lang/String;

.field private mValue:I

.field private mValueText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/XT9SeekBarPreference;->mValue:I

    .line 36
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/XT9SeekBarPreference;->mContext:Landroid/content/Context;

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/XT9SeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09014b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9SeekBarPreference;->mUnit:Ljava/lang/String;

    .line 38
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9SeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/XT9SeekBarPreference;->mMax:I

    .line 39
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9SeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/XT9SeekBarPreference;->mDefault:I

    .line 40
    return-void
.end method

.method public static getAutoDelay(Landroid/content/SharedPreferences;Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 119
    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 129
    :goto_0
    return p2

    .line 121
    :catch_0
    move-exception v0

    .line 122
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 123
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 124
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 126
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 127
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private saveAutoDelay(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/XT9SeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 134
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 135
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 136
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 137
    return-void
.end method


# virtual methods
.method public getProgress()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/nuance/flext9_OEM/input/XT9SeekBarPreference;->mValue:I

    return v0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 73
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/nuance/flext9_OEM/input/XT9SeekBarPreference;->mMax:I

    div-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 74
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/nuance/flext9_OEM/input/XT9SeekBarPreference;->mValue:I

    div-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 75
    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, -0x2

    const/4 v2, 0x6

    .line 49
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/XT9SeekBarPreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 51
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 53
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/XT9SeekBarPreference;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/XT9SeekBarPreference;->mValueText:Landroid/widget/TextView;

    .line 54
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/XT9SeekBarPreference;->mValueText:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 55
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/XT9SeekBarPreference;->mValueText:Landroid/widget/TextView;

    const/high16 v2, 0x42000000    # 32.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 56
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 57
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/XT9SeekBarPreference;->mValueText:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    new-instance v1, Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/XT9SeekBarPreference;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/XT9SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 60
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/XT9SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 61
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/XT9SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/XT9SeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 64
    const-string/jumbo v2, "auto_recpgnize_delay"

    iget v3, p0, Lcom/nuance/flext9_OEM/input/XT9SeekBarPreference;->mDefault:I

    invoke-static {v1, v2, v3}, Lcom/nuance/flext9_OEM/input/XT9SeekBarPreference;->getAutoDelay(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/nuance/flext9_OEM/input/XT9SeekBarPreference;->mValue:I

    .line 66
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/XT9SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/nuance/flext9_OEM/input/XT9SeekBarPreference;->mMax:I

    div-int/lit8 v2, v2, 0x64

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 67
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/XT9SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/nuance/flext9_OEM/input/XT9SeekBarPreference;->mValue:I

    div-int/lit8 v2, v2, 0x64

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 68
    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 2

    .prologue
    .line 141
    if-eqz p1, :cond_0

    .line 142
    const-string/jumbo v0, "auto_recpgnize_delay"

    .line 143
    iget v1, p0, Lcom/nuance/flext9_OEM/input/XT9SeekBarPreference;->mValue:I

    invoke-direct {p0, v0, v1}, Lcom/nuance/flext9_OEM/input/XT9SeekBarPreference;->saveAutoDelay(Ljava/lang/String;I)V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9SeekBarPreference;->mParent:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9SeekBarPreference;->mParent:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 148
    :cond_1
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    .prologue
    .line 90
    mul-int/lit8 v0, p2, 0x64

    iput v0, p0, Lcom/nuance/flext9_OEM/input/XT9SeekBarPreference;->mValue:I

    .line 91
    iget v0, p0, Lcom/nuance/flext9_OEM/input/XT9SeekBarPreference;->mValue:I

    int-to-float v0, v0

    .line 92
    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    .line 93
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/XT9SeekBarPreference;->mValueText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/XT9SeekBarPreference;->mUnit:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/XT9SeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 96
    return-void
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 3

    .prologue
    .line 79
    invoke-super {p0, p1, p2}, Landroid/preference/DialogPreference;->onSetInitialValue(ZLjava/lang/Object;)V

    .line 80
    if-eqz p1, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/XT9SeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 82
    const-string/jumbo v1, "auto_recpgnize_delay"

    iget v2, p0, Lcom/nuance/flext9_OEM/input/XT9SeekBarPreference;->mDefault:I

    invoke-static {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/XT9SeekBarPreference;->getAutoDelay(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/XT9SeekBarPreference;->mValue:I

    .line 86
    :goto_0
    return-void

    .line 85
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/XT9SeekBarPreference;->mValue:I

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public setParent(Landroid/preference/PreferenceScreen;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/XT9SeekBarPreference;->mParent:Landroid/preference/PreferenceScreen;

    .line 44
    return-void
.end method

.method public setProgress(I)V
    .locals 1

    .prologue
    .line 104
    iput p1, p0, Lcom/nuance/flext9_OEM/input/XT9SeekBarPreference;->mValue:I

    .line 105
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 107
    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/XT9SeekBarPreference;->showDialog(Landroid/os/Bundle;)V

    .line 114
    return-void
.end method
