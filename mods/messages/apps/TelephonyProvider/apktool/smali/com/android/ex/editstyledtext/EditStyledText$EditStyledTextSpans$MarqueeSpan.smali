.class public Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;
.super Landroid/text/style/CharacterStyle;
.source "EditStyledText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/editstyledtext/EditStyledText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EditStyledTextSpans$MarqueeSpan"
.end annotation


# instance fields
.field private mMarqueeColor:I

.field private mType:I


# direct methods
.method private getMarqueeColor(II)I
    .locals 7

    .prologue
    const v5, 0xffffff

    const/16 v0, 0x80

    .line 2555
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    .line 2556
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .line 2557
    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 2558
    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    .line 2559
    if-nez v3, :cond_0

    move v3, v0

    .line 2562
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 2580
    const-string/jumbo v0, "EditStyledText"

    const-string/jumbo v1, "--- getMarqueeColor: got illigal marquee ID."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2581
    return v5

    .line 2564
    :pswitch_0
    if-le v2, v0, :cond_1

    .line 2565
    div-int/lit8 v0, v2, 0x2

    :goto_0
    move v6, v1

    move v1, v0

    move v0, v6

    .line 2583
    :goto_1
    invoke-static {v3, v1, v0, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0

    .line 2567
    :cond_1
    rsub-int v0, v2, 0xff

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 2571
    :pswitch_1
    if-le v1, v0, :cond_2

    .line 2572
    div-int/lit8 v0, v1, 0x2

    :goto_2
    move v1, v2

    .line 2576
    goto :goto_1

    .line 2574
    :cond_2
    rsub-int v0, v1, 0xff

    div-int/lit8 v0, v0, 0x2

    goto :goto_2

    .line 2578
    :pswitch_2
    return v5

    .line 2562
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public resetColor(I)V
    .locals 1

    .prologue
    .line 2550
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;->mType:I

    invoke-direct {p0, v0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;->getMarqueeColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;->mMarqueeColor:I

    .line 2551
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .prologue
    .line 2597
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;->mMarqueeColor:I

    iput v0, p1, Landroid/text/TextPaint;->bgColor:I

    .line 2598
    return-void
.end method
