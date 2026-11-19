.class public Lcom/android/mms/ui/zoom/ZoomGestureOverlayView;
.super Landroid/gesture/GestureOverlayView;
.source "ZoomGestureOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/zoom/ZoomGestureOverlayView$IZoomListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCanZoom:Z

.field private mContext:Landroid/content/Context;

.field private mOldDistance:F

.field private final mZoomListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/mms/ui/zoom/ZoomGestureOverlayView$IZoomListener;",
            "Lcom/android/mms/ui/zoom/ZoomGestureOverlayView$IZoomListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/mms/ui/zoom/ZoomGestureOverlayView;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/zoom/ZoomGestureOverlayView;->mZoomListenerMap:Ljava/util/Map;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/android/mms/ui/zoom/ZoomGestureOverlayView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/zoom/ZoomGestureOverlayView;->TAG:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/zoom/ZoomGestureOverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    iput-object p1, p0, Lcom/android/mms/ui/zoom/ZoomGestureOverlayView;->mContext:Landroid/content/Context;

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/mms/ui/zoom/ZoomGestureOverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    iput-object p1, p0, Lcom/android/mms/ui/zoom/ZoomGestureOverlayView;->mContext:Landroid/content/Context;

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0, p1, p2, p3}, Landroid/gesture/GestureOverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/zoom/ZoomGestureOverlayView;->mOldDistance:F

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 59
    iput-object v0, p0, Lcom/android/mms/ui/zoom/ZoomGestureOverlayView;->mZoomListenerMap:Ljava/util/Map;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/zoom/ZoomGestureOverlayView;->mCanZoom:Z

    .line 96
    iput-object p1, p0, Lcom/android/mms/ui/zoom/ZoomGestureOverlayView;->mContext:Landroid/content/Context;

    .line 97
    return-void
.end method

.method private calculateSpacing(Landroid/view/MotionEvent;)F
    .locals 3

    .prologue
    .line 179
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float/2addr v0, v1

    .line 180
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    sub-float/2addr v1, v2

    .line 181
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method private enableGesture()Ljava/lang/Boolean;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 114
    iget-object v0, p0, Lcom/android/mms/ui/zoom/ZoomGestureOverlayView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 117
    const-string/jumbo v1, "pref_key_enable_gesture"

    .line 116
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 118
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private fireListenersWithScale(F)V
    .locals 2

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/android/mms/ui/zoom/ZoomGestureOverlayView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/zoom/ZoomGestureOverlayView$1;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/zoom/ZoomGestureOverlayView$1;-><init>(Lcom/android/mms/ui/zoom/ZoomGestureOverlayView;F)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 241
    return-void
.end method

.method private logDebug(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 106
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    sget-object v0, Lcom/android/mms/ui/zoom/ZoomGestureOverlayView;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    sget-object v0, Lcom/android/mms/ui/zoom/ZoomGestureOverlayView;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    return-void
.end method


# virtual methods
.method public addZoomListener(Lcom/android/mms/ui/zoom/ZoomGestureOverlayView$IZoomListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 205
    if-nez p1, :cond_0

    .line 206
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'listener\' cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/zoom/ZoomGestureOverlayView;->mZoomListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 123
    sget-object v0, Lcom/android/mms/ui/zoom/ZoomGestureOverlayView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dispatchTouchEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCanZoom = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/mms/ui/zoom/ZoomGestureOverlayView;->mCanZoom:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/zoom/ZoomGestureOverlayView;->logDebug(Ljava/lang/String;)V

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mOldDistance = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/ui/zoom/ZoomGestureOverlayView;->mOldDistance:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/zoom/ZoomGestureOverlayView;->logDebug(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 127
    packed-switch v0, :pswitch_data_0

    .line 167
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/gesture/GestureOverlayView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 130
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 131
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 133
    iput-boolean v5, p0, Lcom/android/mms/ui/zoom/ZoomGestureOverlayView;->mCanZoom:Z

    .line 135
    invoke-direct {p0, p1}, Lcom/android/mms/ui/zoom/ZoomGestureOverlayView;->calculateSpacing(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/zoom/ZoomGestureOverlayView;->mOldDistance:F

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mOldDistance(updated) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/ui/zoom/ZoomGestureOverlayView;->mOldDistance:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/zoom/ZoomGestureOverlayView;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :cond_1
    iput-boolean v3, p0, Lcom/android/mms/ui/zoom/ZoomGestureOverlayView;->mCanZoom:Z

    goto :goto_0

    .line 143
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/mms/ui/zoom/ZoomGestureOverlayView;->mCanZoom:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/mms/ui/zoom/ZoomGestureOverlayView;->enableGesture()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 147
    invoke-direct {p0, p1}, Lcom/android/mms/ui/zoom/ZoomGestureOverlayView;->calculateSpacing(Landroid/view/MotionEvent;)F

    move-result v0

    .line 149
    iget v1, p0, Lcom/android/mms/ui/zoom/ZoomGestureOverlayView;->mOldDistance:F

    sub-float v1, v0, v1

    .line 152
    cmpl-float v2, v0, v4

    if-lez v2, :cond_0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x41f00000    # 30.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 153
    const-string/jumbo v2, "Absolute threshold satisfied!"

    invoke-direct {p0, v2}, Lcom/android/mms/ui/zoom/ZoomGestureOverlayView;->logDebug(Ljava/lang/String;)V

    .line 155
    iput v0, p0, Lcom/android/mms/ui/zoom/ZoomGestureOverlayView;->mOldDistance:F

    .line 157
    cmpl-float v0, v1, v4

    if-lez v0, :cond_2

    const v0, 0x3f8ccccd    # 1.1f

    .line 158
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/mms/ui/zoom/ZoomGestureOverlayView;->fireListenersWithScale(F)V

    .line 159
    return v5

    .line 157
    :cond_2
    const v0, 0x3f733333    # 0.95f

    goto :goto_1

    .line 164
    :pswitch_3
    iput-boolean v3, p0, Lcom/android/mms/ui/zoom/ZoomGestureOverlayView;->mCanZoom:Z

    goto :goto_0

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public removeZoomListener(Lcom/android/mms/ui/zoom/ZoomGestureOverlayView$IZoomListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 219
    if-nez p1, :cond_0

    .line 220
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'listener\' cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/zoom/ZoomGestureOverlayView;->mZoomListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/android/mms/ui/zoom/ZoomGestureOverlayView;->mZoomListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    :cond_1
    return-void
.end method
