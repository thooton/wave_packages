.class Lcom/sonim/borqs/launcher/DigitalClock$AmPm;
.super Ljava/lang/Object;
.source "DigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonim/borqs/launcher/DigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AmPm"
.end annotation


# instance fields
.field private mAmPmTextView:Landroid/widget/TextView;

.field private mAmString:Ljava/lang/String;

.field private mPmString:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/graphics/Typeface;)V
    .locals 2

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const v0, 0x7f0e001a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonim/borqs/launcher/DigitalClock$AmPm;->mAmPmTextView:Landroid/widget/TextView;

    .line 111
    iget-object v0, p0, Lcom/sonim/borqs/launcher/DigitalClock$AmPm;->mAmPmTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 112
    iget-object v0, p0, Lcom/sonim/borqs/launcher/DigitalClock$AmPm;->mAmPmTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 115
    :cond_0
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v0

    .line 116
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/sonim/borqs/launcher/DigitalClock$AmPm;->mAmString:Ljava/lang/String;

    .line 117
    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/sonim/borqs/launcher/DigitalClock$AmPm;->mPmString:Ljava/lang/String;

    .line 118
    return-void
.end method


# virtual methods
.method setIsMorning(Z)V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sonim/borqs/launcher/DigitalClock$AmPm;->mAmPmTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 128
    iget-object v1, p0, Lcom/sonim/borqs/launcher/DigitalClock$AmPm;->mAmPmTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sonim/borqs/launcher/DigitalClock$AmPm;->mAmString:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    :cond_0
    return-void

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/sonim/borqs/launcher/DigitalClock$AmPm;->mPmString:Ljava/lang/String;

    goto :goto_0
.end method

.method setShowAmPm(Z)V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sonim/borqs/launcher/DigitalClock$AmPm;->mAmPmTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 122
    iget-object v1, p0, Lcom/sonim/borqs/launcher/DigitalClock$AmPm;->mAmPmTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    :cond_0
    return-void

    .line 122
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method
