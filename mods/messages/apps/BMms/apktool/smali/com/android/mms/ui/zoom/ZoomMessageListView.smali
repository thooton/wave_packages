.class public Lcom/android/mms/ui/zoom/ZoomMessageListView;
.super Landroid/widget/ListView;
.source "ZoomMessageListView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 53
    return-void
.end method


# virtual methods
.method public handleZoomWithScale(FZ)V
    .locals 4

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/android/mms/ui/zoom/ZoomMessageListView;->getChildCount()I

    move-result v2

    .line 63
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 64
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/zoom/ZoomMessageListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 65
    instance-of v3, v0, Lcom/android/mms/ui/zoom/ZoomMessageListItem;

    if-eqz v3, :cond_0

    .line 66
    check-cast v0, Lcom/android/mms/ui/zoom/ZoomMessageListItem;

    invoke-virtual {v0, p1, p2}, Lcom/android/mms/ui/zoom/ZoomMessageListItem;->setZoomScale(FZ)V

    .line 63
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 69
    :cond_1
    return-void
.end method
