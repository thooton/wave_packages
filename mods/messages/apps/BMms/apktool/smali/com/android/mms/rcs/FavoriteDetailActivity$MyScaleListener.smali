.class Lcom/android/mms/rcs/FavoriteDetailActivity$MyScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "FavoriteDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/rcs/FavoriteDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyScaleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/rcs/FavoriteDetailActivity;


# direct methods
.method private constructor <init>(Lcom/android/mms/rcs/FavoriteDetailActivity;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/mms/rcs/FavoriteDetailActivity$MyScaleListener;->this$0:Lcom/android/mms/rcs/FavoriteDetailActivity;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/rcs/FavoriteDetailActivity;Lcom/android/mms/rcs/FavoriteDetailActivity$MyScaleListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/rcs/FavoriteDetailActivity$MyScaleListener;-><init>(Lcom/android/mms/rcs/FavoriteDetailActivity;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 4

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailActivity$MyScaleListener;->this$0:Lcom/android/mms/rcs/FavoriteDetailActivity;

    iget-object v1, p0, Lcom/android/mms/rcs/FavoriteDetailActivity$MyScaleListener;->this$0:Lcom/android/mms/rcs/FavoriteDetailActivity;

    invoke-static {v1}, Lcom/android/mms/rcs/FavoriteDetailActivity;->-get3(Lcom/android/mms/rcs/FavoriteDetailActivity;)Ljava/util/ArrayList;

    move-result-object v1

    .line 130
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    iget-object v3, p0, Lcom/android/mms/rcs/FavoriteDetailActivity$MyScaleListener;->this$0:Lcom/android/mms/rcs/FavoriteDetailActivity;

    invoke-static {v3}, Lcom/android/mms/rcs/FavoriteDetailActivity;->-get0(Lcom/android/mms/rcs/FavoriteDetailActivity;)F

    move-result v3

    .line 129
    invoke-static {v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->onFontSizeScale(Ljava/util/ArrayList;FF)F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/mms/rcs/FavoriteDetailActivity;->-set1(Lcom/android/mms/rcs/FavoriteDetailActivity;F)F

    .line 131
    iget-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailActivity$MyScaleListener;->this$0:Lcom/android/mms/rcs/FavoriteDetailActivity;

    invoke-static {v0}, Lcom/android/mms/rcs/FavoriteDetailActivity;->-get2(Lcom/android/mms/rcs/FavoriteDetailActivity;)Lcom/android/mms/rcs/FavoriteDetailAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/rcs/FavoriteDetailActivity$MyScaleListener;->this$0:Lcom/android/mms/rcs/FavoriteDetailActivity;

    invoke-static {v1}, Lcom/android/mms/rcs/FavoriteDetailActivity;->-get0(Lcom/android/mms/rcs/FavoriteDetailActivity;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/rcs/FavoriteDetailAdapter;->setBodyFontSize(F)V

    .line 132
    iget-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailActivity$MyScaleListener;->this$0:Lcom/android/mms/rcs/FavoriteDetailActivity;

    invoke-static {v0}, Lcom/android/mms/rcs/FavoriteDetailActivity;->-get2(Lcom/android/mms/rcs/FavoriteDetailActivity;)Lcom/android/mms/rcs/FavoriteDetailAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/rcs/FavoriteDetailAdapter;->notifyDataSetChanged()V

    .line 133
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    .prologue
    .line 143
    return-void
.end method
