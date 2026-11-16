.class public Lcom/android/mms/ui/zoom/ZoomMessageListItem;
.super Landroid/widget/LinearLayout;
.source "ZoomMessageListItem.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mCurrentTextSize:F


# instance fields
.field private final mOriginalTextSizes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/widget/TextView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mZoomableTextViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private sContext:Landroid/content/Context;


# direct methods
.method static synthetic -get0(Lcom/android/mms/ui/zoom/ZoomMessageListItem;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/zoom/ZoomMessageListItem;->mZoomableTextViewList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/mms/ui/zoom/ZoomMessageListItem;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/zoom/ZoomMessageListItem;->setZoomScalePreference()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/android/mms/ui/zoom/ZoomMessageListItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/zoom/ZoomMessageListItem;->TAG:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/zoom/ZoomMessageListItem;->mZoomableTextViewList:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/zoom/ZoomMessageListItem;->mOriginalTextSizes:Ljava/util/Map;

    .line 71
    iput-object p1, p0, Lcom/android/mms/ui/zoom/ZoomMessageListItem;->sContext:Landroid/content/Context;

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/zoom/ZoomMessageListItem;->mZoomableTextViewList:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/zoom/ZoomMessageListItem;->mOriginalTextSizes:Ljava/util/Map;

    .line 82
    iput-object p1, p0, Lcom/android/mms/ui/zoom/ZoomMessageListItem;->sContext:Landroid/content/Context;

    .line 83
    return-void
.end method

.method private static pixelsToSp(Landroid/content/Context;F)F
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 169
    div-float v0, p1, v0

    return v0
.end method

.method private setZoomScalePreference()V
    .locals 3

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/mms/ui/zoom/ZoomMessageListItem;->sContext:Landroid/content/Context;

    .line 193
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 195
    const-string/jumbo v1, "pref_key_zoom_message"

    sget v2, Lcom/android/mms/ui/zoom/ZoomMessageListItem;->mCurrentTextSize:F

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 196
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 197
    return-void
.end method

.method public static zoomViewByScale(Landroid/content/Context;Landroid/widget/TextView;FZ)V
    .locals 4

    .prologue
    .line 126
    if-nez p1, :cond_0

    .line 127
    sget-object v0, Lcom/android/mms/ui/zoom/ZoomMessageListItem;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "\'view\' is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-void

    .line 132
    :cond_0
    if-eqz p3, :cond_1

    .line 133
    const/16 v1, 0x1a

    .line 134
    const/16 v0, 0x10

    .line 141
    :goto_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    invoke-static {p0, v2}, Lcom/android/mms/ui/zoom/ZoomMessageListItem;->pixelsToSp(Landroid/content/Context;F)F

    move-result v2

    .line 143
    mul-float/2addr v2, p2

    .line 145
    int-to-float v3, v1

    cmpl-float v3, v2, v3

    if-lez v3, :cond_2

    .line 146
    int-to-float v0, v1

    .line 155
    :goto_1
    float-to-int v1, v0

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 156
    sput v0, Lcom/android/mms/ui/zoom/ZoomMessageListItem;->mCurrentTextSize:F

    .line 158
    return-void

    .line 136
    :cond_1
    const/16 v1, 0x18

    .line 137
    const/16 v0, 0xe

    goto :goto_0

    .line 147
    :cond_2
    int-to-float v1, v0

    cmpg-float v1, v2, v1

    if-gez v1, :cond_3

    .line 148
    int-to-float v0, v0

    goto :goto_1

    :cond_3
    move v0, v2

    .line 151
    goto :goto_1
.end method


# virtual methods
.method public addZoomableTextView(Landroid/widget/TextView;)V
    .locals 2

    .prologue
    .line 91
    if-nez p1, :cond_0

    .line 92
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/zoom/ZoomMessageListItem;->mZoomableTextViewList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/android/mms/ui/zoom/ZoomMessageListItem;->mZoomableTextViewList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v0, p0, Lcom/android/mms/ui/zoom/ZoomMessageListItem;->mOriginalTextSizes:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_1
    return-void
.end method

.method public setZoomScale(FZ)V
    .locals 2

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/android/mms/ui/zoom/ZoomMessageListItem;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 179
    if-eqz v0, :cond_0

    .line 180
    new-instance v1, Lcom/android/mms/ui/zoom/ZoomMessageListItem$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/mms/ui/zoom/ZoomMessageListItem$2;-><init>(Lcom/android/mms/ui/zoom/ZoomMessageListItem;FZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 190
    :cond_0
    return-void
.end method
