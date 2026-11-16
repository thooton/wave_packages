.class public Lcom/android/mms/ui/QuickContactDivot;
.super Landroid/widget/QuickContactBadge;
.source "QuickContactDivot.java"

# interfaces
.implements Lcom/android/mms/ui/Divot;


# static fields
.field private static isLayoutRtl:Z


# instance fields
.field private mDensity:F

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawableIntrinsicHeight:I

.field private mDrawableIntrinsicWidth:I

.field private mPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/QuickContactDivot;->isLayoutRtl:Z

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;)V

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/QuickContactDivot;->initialize(Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    invoke-direct {p0, p2}, Lcom/android/mms/ui/QuickContactDivot;->initialize(Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    invoke-direct {p0, p2}, Lcom/android/mms/ui/QuickContactDivot;->initialize(Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method private initialize(Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 63
    if-eqz p1, :cond_0

    .line 64
    const-string/jumbo v0, "position"

    sget-object v1, Lcom/android/mms/ui/QuickContactDivot;->sPositionChoices:[Ljava/lang/String;

    const/4 v2, -0x1

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeListValue(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/QuickContactDivot;->mPosition:I

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/QuickContactDivot;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/mms/ui/QuickContactDivot;->mDensity:F

    .line 70
    invoke-direct {p0}, Lcom/android/mms/ui/QuickContactDivot;->setDrawable()V

    .line 71
    return-void
.end method

.method private setDrawable()V
    .locals 5

    .prologue
    const v4, 0x7f0200d3

    const v3, 0x7f0200d1

    const/4 v0, 0x1

    .line 74
    invoke-virtual {p0}, Lcom/android/mms/ui/QuickContactDivot;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 76
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/mms/ui/QuickContactDivot;->isLayoutRtl:Z

    .line 78
    iget v0, p0, Lcom/android/mms/ui/QuickContactDivot;->mPosition:I

    packed-switch v0, :pswitch_data_0

    .line 115
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/QuickContactDivot;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/QuickContactDivot;->mDrawableIntrinsicWidth:I

    .line 116
    iget-object v0, p0, Lcom/android/mms/ui/QuickContactDivot;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/QuickContactDivot;->mDrawableIntrinsicHeight:I

    .line 117
    return-void

    .line 76
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 84
    :pswitch_0
    sget-boolean v0, Lcom/android/mms/ui/QuickContactDivot;->isLayoutRtl:Z

    if-eqz v0, :cond_1

    .line 85
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/QuickContactDivot;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 87
    :cond_1
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/QuickContactDivot;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 96
    :pswitch_1
    sget-boolean v0, Lcom/android/mms/ui/QuickContactDivot;->isLayoutRtl:Z

    if-eqz v0, :cond_2

    .line 97
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/QuickContactDivot;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 99
    :cond_2
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/QuickContactDivot;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 121
    invoke-super {p0, p1}, Landroid/widget/QuickContactBadge;->onDraw(Landroid/graphics/Canvas;)V

    .line 122
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 123
    iget-object v0, p0, Lcom/android/mms/ui/QuickContactDivot;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 124
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 125
    return-void
.end method
