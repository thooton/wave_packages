.class Lcom/android/music/AudioPreview$3;
.super Ljava/lang/Object;
.source "AudioPreview.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/AudioPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/AudioPreview;


# direct methods
.method constructor <init>(Lcom/android/music/AudioPreview;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/music/AudioPreview$3;->this$0:Lcom/android/music/AudioPreview;

    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/music/AudioPreview$3;->this$0:Lcom/android/music/AudioPreview;

    invoke-static {v0}, Lcom/android/music/AudioPreview;->-get7(Lcom/android/music/AudioPreview;)Landroid/widget/SeekBar;

    move-result-object v0

    .line 408
    if-eqz p2, :cond_0

    .line 409
    iget-object v1, p0, Lcom/android/music/AudioPreview$3;->this$0:Lcom/android/music/AudioPreview;

    invoke-virtual {v1}, Lcom/android/music/AudioPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020048

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 413
    :goto_0
    return-void

    .line 411
    :cond_0
    iget-object v1, p0, Lcom/android/music/AudioPreview$3;->this$0:Lcom/android/music/AudioPreview;

    invoke-virtual {v1}, Lcom/android/music/AudioPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020047

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
