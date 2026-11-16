.class public Lcom/android/mms/ui/MMSVideoView;
.super Landroid/widget/VideoView;
.source "MMSVideoView.java"


# instance fields
.field private mVideoHeight:I

.field private mVideoWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 54
    iget v0, p0, Lcom/android/mms/ui/MMSVideoView;->mVideoWidth:I

    invoke-static {v0, p1}, Lcom/android/mms/ui/MMSVideoView;->getDefaultSize(II)I

    move-result v0

    .line 55
    iget v1, p0, Lcom/android/mms/ui/MMSVideoView;->mVideoHeight:I

    invoke-static {v1, p2}, Lcom/android/mms/ui/MMSVideoView;->getDefaultSize(II)I

    move-result v1

    .line 56
    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/MMSVideoView;->setMeasuredDimension(II)V

    .line 57
    return-void
.end method
